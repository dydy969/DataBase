-- scott/tiger 접속..


--사용자계정의 테이블 조회
--( tabs 자료사전 )
SELECT * FROM tabs;


-- 테이블의 구조(스키머) 간단히 확인
DESC emp;

--테이블의 데이터 확인
SELECT * FROM emp;


-- 주석, Comment
-- 한줄 주석 단축키 : ctrl + /



-- SELECT 구문

-- 전체 컬럼 조회
SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;
SELECT *
FROM bonus;

-- 부분 컬럼(지정한 컬럼) 조회
SELECT
    empno, ename, job
FROM emp;

-- 조회되는 컬럼명에 별칭(Alias)을 적용하기
SELECT
    empno AS "사번", --사원번호
    ename "이름" --사원이름
FROM emp;

desc emp;
SELECT empno, ename, job, mgr FROM emp;
SELECT * FROM emp;



-- WHERE절 (조건절)

--영업사원들만 조회하기
SELECT * FROM emp
WHERE job = 'SALESMAN';

-- 전체 사원들 중 급여가 2000이 넘는 사원
SELECT * FROM emp
WHERE sal > 2000;

-- 급여가 2500이 넘고 관리자가 아닌 사원
SELECT * FROM emp
WHERE sal > 2500
--    AND job <> 'MANAGER';
    AND NOT(job = 'MANAGER');
    
    
    
    
-- BETWEEN a AND b
-- 사원번호가 7700 ~ 7900인 사원 조회
SELECT empno, ename FROM emp
WHERE empno BETWEEN 7700 AND 7900;

-- 사원이름이 'ALLEN' ~ 'KING' 사이인 사원 조회
SELECT empno, ename FROM emp
--WHERE ename BETWEEN 'ALLEN' AND 'KING';
--WHERE NOT (ename BETWEEN 'ALLEN' AND 'KING');
WHERE ename NOT BETWEEN 'ALLEN' AND 'KING';




-- IN( list )
SELECT empno, ename FROM emp
WHERE empno IN ( 7369, 7521, 7654, 7777, 8888, 7878 );

-- NOT IN( list )
SELECT empno, ename FROM emp
WHERE NOT(empno IN (7369, 7521, 7654, 7777, 8888, 7878));

SELECT empno, ename FROM emp
WHERE empno NOT IN (7369, 7521, 7654, 7777, 8888, 7878);


SELECT empno, ename FROM emp
WHERE ename IN ( 'SMITH', 'ALLEN', 'KING', 'ALICE' );




-- LIKE
SELECT empno, ename FROM emp
--WHERE ename LIKE '%R%'; -- 이름에 R을 포함하는 사원
--WHERE ename LIKE '_A%'; -- 이름의 두번째가 A인 사원
--WHERE ename LIKE '%RD'; -- 이름이 RD로 끝나는 사원
WHERE ename NOT LIKE '%R%'; --이름에 R을 포함하지 않는 사원

-- LIKE연산자와 IN연산자를 같이 사용하는 문법은 없다
SELECT empno, ename FROM emp
WHERE ename LIKE '%R%'
    OR ename LIKE '%L%';


-- 서식없이 동등비교(equal)를 할 때에는
--LIKE연산자를 사용하면 안된다 ( Full-Scan 발생한다 )
SELECT empno, ename FROM emp
--WHERE empno LIKE '7654';
WHERE empno = '7654';



SELECT * FROM emp
--WHERE mgr = null; --조회되지 않음
WHERE mgr IS NULL;





-- WHERE절 문제
-- SELECT empno, ename, deptno FROM emp
-- WHERE	 구조를 이용하여 해결할 것

 -- 부서번호가 30이고 직무가 영업인 사원 조회
	ALLEN, WARD, MARTIN, TURNER
SELECT empno, ename, deptno FROM emp
WHERE deptno = 30
    AND job = 'SALESMAN';
 -- 부서번호가 30이고 직무가 영업이 아닌 사원 조회
	BLAKE, JAMES
SELECT empno, ename, deptno FROM emp
WHERE deptno = 30
    AND job <> 'SALESMAN';
 -- 부서번호가 30이 아니고 직무가 영업이 아닌 사원 조회
	SMITH, JONES, CLARK, KING, FORD, MILLER
SELECT empno, ename, deptno FROM emp
--WHERE  deptno <> 30 AND job <> 'SALESMAN';
WHERE NOT(deptno = 30 OR job = 'SALESMAN');
 -- 사원번호가 7782에서 7900 사이인 사원 조회
	CLARK, KING, TURNER, JAMES
SELECT empno, ename, deptno FROM emp
WHERE empno BETWEEN 7782 AND 7900;
 -- 사원명이 'A'부터 'C'로 시작하는 사원 조회
	ALLEN, BLAKE, CLARK
SELECT empno, ename, deptno FROM emp
--WHERE ename BETWEEN 'A' AND 'C~'; -- CLARK
WHERE ename >= 'A' AND ename < 'D';

SELECT empno, ename, deptno FROM emp
WHERE ename LIKE 'A%'
    OR ename LIKE 'B%'
    OR ename LIKE 'C%';
 -- 부서번호가 10 또는 30인 사원 조회 (IN 사용)
	ALLEN, WARD, MARTIN, BLAKE, CLARK, KING, TURNER, JAMES, MILLER
SELECT empno, ename, deptno FROM emp
WHERE deptno IN ( 10, 30 );




-- ORDER BY 절
SELECT * FROM emp
--ORDER BY empno;
--ORDER BY ename;
ORDER BY ename DESC;

--부서번호 오름차순, 부서 내 이름 내림차순, 동명이인 사번 오름차순
SELECT * FROM emp
ORDER BY deptno ASC, ename DESC, empno;


SELECT empno, ename, comm FROM emp
ORDER BY comm DESC NULLS LAST;
--ORDER BY comm ASC NULLS FIRST;

SELECT empno, ename, comm FROM emp
--WHERE comm IS NOT NULL
ORDER BY comm DESC NULLS LAST, ename, empno;

-- 조회되지 않는 컬럼을 이용해서도 정렬기준으로 삼을 수 있다
SELECT empno, ename, comm FROM emp
ORDER BY sal DESC, comm DESC;





-- DISTINCT 키워드
SELECT DISTINCT
    deptno
FROM emp
ORDER BY deptno;


SELECT empno, ename FROM emp;

SELECT DISTINCT empno, ename FROM emp;

SELECT DISTINCT
    ename, deptno
FROM emp
ORDER BY deptno, ename;

-- 직무 종류 확인하기
SELECT DISTINCT
    job
FROM emp
ORDER BY job;

SELECT DISTINCT
    deptno, job
FROM emp
ORDER BY deptno, job;
