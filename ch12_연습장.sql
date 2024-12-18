-- 실습 12-1 
CREATE TABLE EMP_DDL( 
   EMPNO      NUMBER(4), 
   ENAME      VARCHAR2(10), 
   JOB       VARCHAR2(9), 
   MGR        NUMBER(4), 
   HIREDATE   DATE, 
   SAL        NUMBER(7,2), 
   COMM       NUMBER(7,2), 
   DEPTNO     NUMBER(2) 
); 

 

DESC EMP_DDL; 
DESC EMP; 

 

-- 실습 12-2 

CREATE TABLE DEPT_DDL 
    AS SELECT * FROM DEPT; 

 

DESC DEPT_DDL; 

 

-- 실습 12-3 
SELECT * FROM DEPT_DDL; 

 

-- 실습 12-4 

CREATE TABLE EMP_DDL_30 
    AS SELECT * 
         FROM EMP 
        WHERE DEPTNO = 30; 
 

SELECT * FROM EMP_DDL_30; 

 

-- 실습 12-5 
CREATE TABLE EMPDEPT_DDL 
    AS SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE, 
              E.SAL, E.COMM, D.DEPTNO, D.DNAME, D.LOC 
         FROM EMP E, DEPT D 
        WHERE 1 <> 1; 

 

SELECT * FROM EMPDEPT_DDL; 

 

-- 실습 12-6 

CREATE TABLE EMP_ALTER 
    AS SELECT * FROM EMP; 

 

SELECT * FROM EMP_ALTER; 

 

-- 실습 12-7 

ALTER TABLE EMP_ALTER 
  ADD HP VARCHAR2(20); 
 

SELECT * FROM EMP_ALTER; 

 

-- 실습 12-8 

ALTER TABLE EMP_ALTER 
RENAME COLUMN HP TO TEL; 
SELECT * FROM EMP_ALTER; 

 

-- 실습 12-9 

ALTER TABLE EMP_ALTER 
MODIFY EMPNO NUMBER(5); 

DESC EMP_ALTER; 

 

-- 실습 12-10 

ALTER TABLE EMP_ALTER 
 DROP COLUMN TEL; 

 

SELECT * FROM EMP_ALTER; 

 

-- 실습 12-11 
RENAME EMP_ALTER TO EMP_RENAME; 

 -- 실습 12-12 

DESC EMP_ALTER; 

 

-- 실습 12-13 

SELECT * 

  FROM EMP_RENAME; 

 

-- 실습 12-14 

TRUNCATE TABLE EMP_RENAME; 
select * from EMP_RENAME;

 

-- 실습 12-15 

DROP TABLE EMP_RENAME; 
select * from EMP_RENAME;

 

-- 실습 12-16 

DESC EMP_RENAME; 