





SELECT * FROM emp
WHERE empno = 7369;
SELECT * FROM dept
WHERE deptno = 20;


SELECT * FROM emp;


SELECT * FROM emp, dept
WHERE emp.deptno = dept.deptno;



-- 두 테이블의 모든 정보 결합하기
SELECT * FROM emp, dept;
--JOIN
--  emp : 8cols 12rows
-- dept : 3cols 4rows
--  emp x dept : 11cols(8+3) 48rows(12x4)

-- emp,dept 테이블 둘 모두에서 deptno 값이 같은 행만 추출
SELECT * FROM emp, dept
WHERE emp.deptno = dept.deptno;



SELECT empno, ename, emp.deptno, dname
FROM emp, dept
WHERE emp.deptno = dept.deptno; -- 조인 조건


SELECT empno, ename, emp.deptno, dname
FROM emp, dept
WHERE emp.deptno = dept.deptno -- 조인 조건
    AND empno > 7800; -- 일반 조회 조건

-- 테이블 이름에 Alias 적용
SELECT empno, ename, E.deptno, dname
FROM emp E, dept D
WHERE E.deptno = D.deptno -- 조인 조건
    AND empno > 7800; -- 일반 조회 조건


-- INNER JOIN, 내부 조인
SELECT empno, ename, E.deptno, dname
FROM emp E
INNER JOIN dept D
    ON E.deptno = D.deptno -- 조인 조건
WHERE empno > 7800; -- 일반 조회 조건




-- NON-EQUI JOIN, 비등가 조인
SELECT * FROM emp; --사원
SELECT * FROM salgrade; --급여등급

SELECT ename, sal, grade
FROM emp, salgrade
WHERE sal BETWEEN losal AND hisal --조인 조건
ORDER BY grade, sal, ename;


SELECT ename, sal, grade
FROM emp
INNER JOIN salgrade
    ON sal BETWEEN losal AND hisal --조인 조건
--WHERE grade = 3
ORDER BY grade, sal, ename;




-- SELF JOIN
SELECT * FROM emp EMPOYEE;
SELECT * FROM emp MANAGER;

SELECT empno, ename, mgr FROM emp EMPOYEE;
SELECT DISTINCT mgr FROM emp MANAGER;


SELECT
    E.empno, E.ename, E.mgr, M.empno, M.ename
FROM emp E, emp M
WHERE E.mgr = M.empno; -- 조인 조건


SELECT
    E.empno, E.ename, M.empno, M.ename
FROM emp E
INNER JOIN emp M
    ON E.mgr = M.empno; -- 조인 조건
