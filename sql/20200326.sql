






SELECT * FROM emp;
SELECT * FROM dept;

--카테시안 곱, CROSS JOIN
SELECT * FROM emp, dept;

SELECT * FROM emp
CROSS JOIN dept;



-- NATURAL JOIN
SELECT * FROM emp
NATURAL JOIN dept
ORDER BY deptno, empno;




-- 오라클 전용구문, OUTER JOIN
SELECT empno, ename, D.deptno, dname
FROM emp E, dept D
WHERE E.deptno(+) = D.deptno --조인 조건
ORDER BY deptno, empno;

-- ANSI 표준구문, OUTER JOIN
SELECT empno, ename, D.deptno, dname
FROM emp E
RIGHT OUTER JOIN dept D
    ON E.deptno = D.deptno --조인 조건
ORDER BY deptno, empno;




-- 오라클 전용구문, OUTER JOIN
SELECT empno, ename, D.deptno, dname
FROM dept D, emp E
WHERE D.deptno = E.deptno(+) --조인 조건
ORDER BY deptno, empno;


-- ANSI 표준구문, OUTER JOIN
SELECT empno, ename, D.deptno, dname
FROM dept D
LEFT OUTER JOIN emp E
    ON D.deptno = E.deptno --조인 조건
ORDER BY deptno, empno;



SELECT
    E.empno, E.ename, E.mgr, M.ename MGR_NAME
FROM emp E, emp M
WHERE E.mgr = M.empno(+);


SELECT
    E.empno, E.ename, E.mgr, M.ename MGR_NAME
FROM emp E
LEFT OUTER JOIN emp M
    ON E.mgr = M.empno;


-- FULL OUTER JOIN
CREATE TABLE test1 ( no NUMBER ); --테이블 생성
CREATE TABLE test2 ( no NUMBER ); --테이블 생성

DELETE test1; --테이블 데이터 전체 삭제
INSERT INTO test1 VALUES ( 10 ); --데이터 삽입
INSERT INTO test1 VALUES ( 20 );
INSERT INTO test1 VALUES ( 30 );
SELECT * FROM test1;

DELETE test2; --테이블 데이터 전체 삭제
INSERT INTO test2 VALUES ( 10 ); --데이터 삽입
INSERT INTO test2 VALUES ( 20 );
INSERT INTO test2 VALUES ( 40 );
SELECT * FROM test2;


SELECT * FROM test1, test2
--WHERE test1.no = test2.no;--INNER JOIN, EQUI JOIN, 내부조인
--WHERE test1.no(+) = test2.no;--RIGHT OUTER JOIN
--WHERE test1.no = test2.no(+);--LEFT OUTER JOIN
WHERE test1.no(+) = test2.no(+);--수행되지 않음

SELECT * FROM test1
FULL OUTER JOIN test2
    ON test1.no = test2.no
ORDER BY test1.no;



-- 서브 쿼리

-- KING 의 부서번호 조회
SELECT deptno FROM emp
WHERE ename = upper('king');

-- 10번 부서의 정보 확인
SELECT * FROM dept
WHERE deptno = 10;


SELECT * FROM dept
WHERE deptno = (
    SELECT deptno FROM emp
    WHERE ename = upper('king') );
    
--SELECT D.deptno, dname, loc
SELECT D.*
FROM emp E, dept D
WHERE E.deptno = D.deptno
    AND ename = upper('king');



-- 평균 임금보다 급여를 많이 받는 사원들 조회하기

-- 잘못된 경우 : WHERE절에서 GROUP함수 사용할 수 없다
SELECT * FROM emp
WHERE sal > avg(sal);

-- 잘못된 경우 : HAVING을 쓰려면 GROUP BY 필요함
SELECT * FROM emp
HAVING sal > avg(sal);

SELECT avg(sal) FROM emp; --평균임금

SELECT empno, ename, sal
FROM emp
WHERE sal > (
    SELECT avg(sal) FROM emp );


SELECT empno, ename, sal,
    ( SELECT round(avg(sal), 2) FROM emp ) avg_sal
FROM emp
WHERE sal > (
    SELECT avg(sal) FROM emp );


-- 가장 최근에 입사한 사원
SELECT empno, ename, hiredate
FROM emp
WHERE hiredate = (
    SELECT max(hiredate) FROM emp );

-- 잘못된 경우
SELECT empno, ename, hiredate, max(hiredate)
FROM emp;


-- 전체 평균 임금보다 부서 별 평균임금이 높은 부서
--  컬럼 : deptno, avg_sal
--  10 2916.67
--  20 2258.33


SELECT deptno, round(avg(sal), 2) avg_sal
FROM emp
GROUP BY deptno
HAVING avg(sal) > ( -- 부서 별 평균임금
    SELECT avg(sal) FROM emp ) --전체 평균임금
ORDER BY deptno;



-- 스칼라 서브쿼리
SELECT
    empno, ename, deptno,
    ( SELECT dname FROM dept D WHERE D.deptno = E.deptno ) dname,
    ( SELECT loc FROM dept D WHERE D.deptno = E.deptno ) loc
FROM emp E;



--부서별 인원 구하기
--  40번 부서는 0명이라고 출력한다
--  1. 서브쿼리를 활용해서 작성하기
--  2. JOIN을 활용해서 작성하기
--  deptno, dname, cnt_employee

SELECT
    deptno,
    dname,
    ( SELECT count(*) FROM emp E
     WHERE E.deptno = D.deptno ) cnt_employee
FROM dept D;

SELECT *
FROM emp E, dept D
WHERE E.deptno(+) = D.deptno;

SELECT D.deptno, dname, count(empno) cnt_employee
FROM emp E, dept D
WHERE E.deptno(+) = D.deptno
GROUP BY D.deptno, dname
ORDER BY deptno;

SELECT D.deptno, dname, count(empno) cnt_employee
FROM emp E
RIGHT OUTER JOIN dept D ON E.deptno = D.deptno
--INNER JOIN salgrade ON sal BETWEEN losal AND hisal
GROUP BY D.deptno, dname
ORDER BY deptno;



-- ORDER BY 절에 서브쿼리 쓰기
SELECT empno, ename, sal, deptno
FROM emp E
ORDER BY (
    SELECT loc FROM dept D
    WHERE E.deptno = D.deptno ) DESC, empno;

SELECT empno, ename, sal, E.deptno
FROM emp E, dept D
WHERE E.deptno = D.deptno
ORDER BY loc;




--rownum
--  조회되는 결과에 행 번호를 붙이는 키워드
SELECT rownum, empno, ename FROM emp;

SELECT rownum, emp.* FROM emp;
SELECT rownum, E.* FROM emp E;


--rownum의 잘못된 사용법
--      SELECT 절에서 rownum을 수행한 후 ORDER BY절 수행한다
--      -> ORDER BY로 정렬한 상태가 rownum에 반영되지 않는다
SELECT rownum rnum, E.* FROM emp E
ORDER BY sal DESC;

--ORDER BY 문제 해결
SELECT rownum sal_rank, E.* FROM(
    SELECT * FROM emp
    ORDER BY sal DESC, empno
) E;


SELECT rownum sal_rank, E.* FROM(
    SELECT * FROM emp
    ORDER BY sal DESC, empno
) E
WHERE rownum BETWEEN 1 AND 3;


--잘못된 사용법
--      rownum은 1번부터 연속된 값을 부여한다
--      조건절에서 1부터가 아닌 중간값을 조회하면 찾지 못함
SELECT rownum sal_rank, E.* FROM(
    SELECT * FROM emp
    ORDER BY sal DESC, empno
) E
WHERE rownum BETWEEN 5 AND 8;


--WHERE 절 문제 해결
SELECT * FROM (
    SELECT rownum sal_rank, E.* FROM(
        SELECT * FROM emp
        ORDER BY sal DESC, empno
    ) E
) R
WHERE sal_rank BETWEEN 1 AND 3;



-- Top-N 분석
-- rownum키워드를 이용한 Top-N 분석
SELECT * FROM (
    SELECT rownum rnum, TMP.* FROM (
        SELECT * FROM 테이블명 --조회하려는 대상지정
        ORDER BY 컬럼명 --정렬기준 설정
    ) TMP
) R
WHERE rnum값 비교 조건문;



-- 입사날짜가 가장 오래된 3명 조회하기
SELECT * FROM (
    SELECT rownum rnum, TMP.* FROM (
        SELECT * FROM emp --조회하려는 대상지정
        ORDER BY hiredate --정렬기준 설정
    ) TMP
) R
WHERE rnum <= 3;
