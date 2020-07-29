






-- NUMBER
CREATE TABLE type_test_01 (
    data1 NUMBER,
    data2 NUMBER(10),
    data3 NUMBER(5,2),
    data4 NUMBER(4,5) );
DESC type_test_01;


-- data1 : NUMBER
INSERT INTO type_test_01 ( data1 )
VALUES ( 1111111111222222222233333333334444444444 );
INSERT INTO type_test_01 ( data1 )
VALUES ( 11111111112222222222333333333344444444445555555555 );
SELECT data1 FROM type_test_01;


-- data2 : NUMBER(10)
INSERT INTO type_test_01 ( data2 )
VALUES ( 12345 );
INSERT INTO type_test_01 ( data2 )
VALUES ( 12345678901234567890 ); --안됨
INSERT INTO type_test_01 ( data2 )
VALUES ( 1234.5678 ); --소수점 이하 반올림
SELECT data2 FROM type_test_01;

-- data3 : NUMBER(5, 2)
INSERT INTO type_test_01 ( data3 )
VALUES ( 23.56 );
INSERT INTO type_test_01 ( data3 )
VALUES ( 23.5678 ); -- 소수점 셋째자리 반올림
INSERT INTO type_test_01 ( data3 )
VALUES ( 1234.56 ); -- 안됨, 정수부 자리 너무 많음
INSERT INTO type_test_01 ( data3 )
VALUES ( 34.5 );
SELECT data3 FROM type_test_01 WHERE data3 IS NOT NULL;


-- data4 : NUMBER(4,5) - 0.0xxxx
INSERT INTO type_test_01 ( data4 )
VALUES ( 1234 ); -- 안됨, 정수 입력 불가
INSERT INTO type_test_01 ( data4 )
VALUES ( 0.1234 ); -- 안됨, 소수점 첫째자리가 0이어야함
INSERT INTO type_test_01 ( data4 )
VALUES ( 0.012 );
INSERT INTO type_test_01 ( data4 )
VALUES ( 0.0123456789 ); --넘는 자리 반올림
SELECT data4 FROM type_test_01 WHERE data4 IS NOT NULL;


--VARCHAR2(n) : 문자
CREATE TABLE type_test_02 (
    data VARCHAR2(10) );
DESC type_test_02;

--데이터 삽입해보기, 에러나는 데이터는~??
-- '1234567890'
-- '123456789012345' --에러
-- '일이삼사오육칠팔구십' --에러
-- '일이삼'

INSERT INTO type_test_02
VALUES ('1234567890');
INSERT INTO type_test_02
VALUES ('123456789012345');
INSERT INTO type_test_02
VALUES ('일이삼사오육칠팔구십');
INSERT INTO type_test_02
VALUES ('일이삼');
SELECT * FROM type_test_02;

CREATE TABLE type_test_03 (
    data1 VARCHAR2(10 BYTE), --10바이트
    data2 VARCHAR2(10 CHAR) ); --10개 문자

INSERT INTO type_test_03 ( data1, data2 )
VALUES ( '일이삼', '일이삼사오육칠팔구십' );
INSERT INTO type_test_03 ( data1, data2 )
VALUES ( '1234567890', '1234567890' );
INSERT INTO type_test_03 ( data1, data2 )
VALUES ( '1234567890', '12345678901234567890' );



-- CHAR(n) : 고정 길이 문자
CREATE TABLE type_test_04 (
    data1 CHAR,
    data2 CHAR(20),
    data3 CHAR(20 CHAR) );

INSERT INTO type_test_04
VALUES ( 'Y', '1234567890', '일이삼사오육칠팔구십' );

SELECT * FROM type_test_04;
