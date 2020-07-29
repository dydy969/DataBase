





-- 제약사항

-- NOT NULL
CREATE TABLE cons_01 (
    data VARCHAR2(10) NOT NULL );

--테이블 정보 조회
DESC cons_01;

-- 제약조건 자료사전
SELECT * FROM user_constraints
WHERE table_name = upper('cons_01');

-- 제약조건이 부여된 컬럼 정보 자료사전
SELECT * FROM user_cons_columns
WHERE table_name = upper('cons_01');

INSERT INTO cons_01
VALUES ( null );

-- 테이블 정보 자료사전에는 제약사항이 나오지 않는다
-- 테이블 정보 자료사전
SELECT * FROM tab;
-- 테이블 정보 자료사전 (상세)
SELECT * FROM tabs;

-- DB의 모든 테이블 정보 자료사전
SELECT * FROM all_tables;



-- NOT NULL 제약조건에 이름 붙여서 설정하기
CREATE TABLE cons_02 (
    data VARCHAR2(10) CONSTRAINT cons_02_nn NOT NULL );

SELECT * FROM user_constraints
WHERE table_name = upper('cons_02');


-- 제약조건 없이 테이블 생성
CREATE TABLE cons_03 (
    data VARCHAR2(10) );

-- NOT NULL 제약조건는 컬럼의 데이터타입에 결합되어있다
-- NOT NULL 제약조건을 반영할 때에는 데이터타입을 변경해야한다
ALTER TABLE cons_03
MODIFY data NOT NULL;

DESC cons_03;

SELECT * FROM user_constraints
WHERE table_name = upper('cons_03');


-- 제약조건 추가 - UNIQUE
ALTER TABLE cons_03
ADD CONSTRAINT cons_03_uk UNIQUE ( data );

INSERT INTO cons_03 VALUES ( null );
INSERT INTO cons_03 VALUES ( 'A' );
INSERT INTO cons_03 VALUES ( 'A' );
INSERT INTO cons_03 VALUES ( 'B' );
SELECT * FROM cons_03;

CREATE TABLE cons_04 (
    data VARCHAR2(10) CONSTRAINT cons_uk UNIQUE );

CREATE TABLE cons_05 (
    data VARCHAR2(10),
    CONSTRAINT cons05_uk UNIQUE (data));


-- CHECK
CREATE TABLE cons_06 (
--    data NUMBER CHECK( data>=1 AND data<=100 ) );
    data NUMBER CHECK( data BETWEEN 1 AND 100 ) );

INSERT INTO cons_06 VALUES ( 30 );
INSERT INTO cons_06 VALUES ( 200 );

SELECT * FROM user_constraints
WHERE table_name = upper('cons_06');

SELECT * FROM user_cons_columns
WHERE constraint_name = upper('SYS_C007031');

DESC cons_01;
DESC cons_06;


-- cons_07 테이블 생성
--  컬럼 : data NUMBER

-- ALTER TABLE구문을 이용하여 data에
--  제약사항 CHECK 추가하기
--  1000, 2000, 3000, 4000 만 입력 가능하도록 만들기!

CREATE TABLE cons_07 (
    data NUMBER );

ALTER TABLE cons_07
ADD CONSTRAINT cons_05_ck
    CHECK ( data IN (1000,2000,3000,4000) );

ALTER TABLE cons_07
DROP CONSTRAINT cons_05_ck;

ALTER TABLE cons_07
MODIFY data CHECK( data IN(1000,2000,3000,4000) );




-- DEFAULT
CREATE TABLE cons_08 (
    data1 NUMBER DEFAULT 10,
    data2 DATE,
    data3 VARCHAR2(10) );
    
    
-- 제약사항 자료사전에 DEFAULT 설정은 나오지 않음
SELECT * FROM user_constraints
WHERE table_name = upper('cons_08');

-- 테이블 컬럼 상세 정보 자료사전
SELECT * FROM user_tab_columns
WHERE table_name = upper('cons_08');

ALTER TABLE cons_08
MODIFY data2 DEFAULT sysdate;

ALTER TABLE cons_08
MODIFY data3 DEFAULT 'HI' NOT NULL;


-- 명시적으로 null을 INSERT하면 DEFAULT가 동작하지 않음
INSERT INTO cons_08
VALUES ( null, null, 'AA' );
SELECT * FROM cons_08;

INSERT INTO cons_08 (data1)
VALUES ( 6666 );


-- DEFAULT 주의사항
INSERT INTO cons_08; --안됨, VALUES 절 없음
INSERT INTO cons_08 VALUES (); --안됨, 데이터 있어야함
--모든 컬럼의 DEFAULT를 한번에 동작되게 하는 방법은 없다





-- PRIMARY KEY
CREATE TABLE cons_09 (
    no NUMBER CONSTRAINT cons_09_pk PRIMARY KEY,
    data VARCHAR2(20) NOT NULL );
    
CREATE TABLE cons_10 (
    no NUMBER PRIMARY KEY,
    data VARCHAR2(20) NOT NULL );

CREATE TABLE cons_11 (
    no NUMBER,
    data VARCHAR2(20) NOT NULL,
    CONSTRAINT cons_11_pk PRIMARY KEY (no) );
    
CREATE TABLE cons_12 (
    no NUMBER,
    data VARCHAR2(20) NOT NULL );

ALTER TABLE cons_12
ADD CONSTRAINT cons_12_pk PRIMARY KEY ( no );


DROP TABLE cons_13;
CREATE TABLE cons_13 (
    trade_date DATE,
    trade_no NUMBER,
    CONSTRAINT cons_13_pk
    PRIMARY KEY ( trade_date, trade_no ) );
    
ALTER TABLE cons_13
ADD CONSTRAINT cons_13_pk
    PRIMARY KEY ( trade_date, trade_no );
    
ALTER TABLE cons_13
DROP CONSTRAINT cons_13_pk;




-- FOREIGN KEY

-- PRIMARY KEY 확인
SELECT * FROM user_constraints
WHERE table_name = upper('cons_12');

-- PRIMARY KEY 적용된 컬럼 확인
SELECT * FROM user_cons_columns
WHERE table_name = upper('cons_12');

CREATE TABLE cons_14 (
    num NUMBER,
    data VARCHAR2(50),
    CONSTRAINT cons_14_fk
        FOREIGN KEY ( num ) --자기 테이블의 FK
        REFERENCES cons_12 ( no ) ); --참조 테이블의 PK


CREATE TABLE cons_15 (
    num NUMBER,
    data VARCHAR2(50) );

ALTER TABLE cons_15
ADD CONSTRAINT cons_15_fk
    FOREIGN KEY ( num ) --자기 테이블의 FK
    REFERENCES cons_12 ( no ) --참조 테이블의 PK
--    ON DELETE CASCADE;
--    ON DELETE SET NULL;


SELECT * FROM emp;
SELECT * FROM dept;
DELETE emp;
UPDATE emp
SET deptno = null;
DELETE dept;
rollback;

