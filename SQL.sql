SELECT * FROM EMP
SELECT * FROM xx
DROP TABLE XX PURGE
SELECT E.ENAME,E.SAL,D.DEPTNO,D.LOC FROM EMP E,DEPT  D,SALGRADE S
WHERE E.DEPTNO(+)=D.DEPTNO(+)
SELECT M.ENAME MANAGER,M.SAL,M.DEPTNO,S.GRADE,E.ENAME,E.SAL,E.DEPTNO,S.GRADE
FROM SALGRADE S,EMP E,DEPT D,EMP M
WHERE E.DEPTNO=D.DEPTNO
     AND E.SAL BETWEEN LOSAL AND HISAL
     AND M.MGR=E.EMPNO
     
     
     
    SELECT ENAME,DEPT.DEPTNO,DNAME 
   FROM  DEPT CROSS JOIN EMP
   WHERE EMP.DEPTNO=DEPT.DEPTNO
   
   
   
   SELECT ENAME,SAL,GRADE,LOSAL FROM EMP NATURAL JOIN SALGRADE
 
SELECT E.ENAME,D.DNAME FROM EMP E JOIN DEPT D USING(DEPTNO)
SELECT E.ENAME,M.ENAME
FROM EMP E INNER JOIN EMP M ON(E.EMPNO=M.MGR) 
SELECT A.EMPNO,A.ENAME,A.SAL,B.DEPTNO FROM EMP A RIGHT OUTER JOIN DEPT B
ON(A.DEPTNO=B.DEPTNO)
 
SELECT E.ENAME,M.ENAME  MANAGER FROM EMP E,EMP M
WHERE  E.EMPNO=M.MGR
AND E.SAL>M.SAL
SELECT DEPTNO,MIN(SAL),MAX(SAL) FROM EMP
GROUP BY DEPTNO,SAL
HAVING MIN(SAL)<1500
 CREATE TABLE XX AS SELECT * FROM EMP
 
 
 SELECT * FROM EMP
 
ALTER TABLE SUCHI ADD CONSTRAINT pk_na PRIMARY KEY(RESULT);
SELECT * FROM  SUCHI
DELETE SUCHI WHERE RESULT='s is lower'
SELECT * FROM USER_CONSTRAINTS
WHERE TABLE_NAME='XX'
DESC SUCHI
  
  select
translate(
            '(_389',
            '1234567890!@#$%^&*()_+:/<>',
            'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
             )
    from dual;
            
SELECT * FROM XX
TRUNCATE  TABLE XX
 DROP TABLE XX
SELECT * FROM EMP
WHERE SAL=(SELECT SAL FROM EMP
            WHERE ENAME='FORD'
            )
            AND EMP.ENAME <> 'FORD';
            
 
SELECT * FROM EMP
WHERE DEPTNO=(SELECT DEPTNO FROM DEPT
                WHERE DEPTNO=(SELECT DEPTNO FROM DEPT
                             WHERE LOC='NEW YORK')
              );
              
              
SELECT * FROM EMP
WHERE HIREDATE>
                    (SELECT  HIREDATE FROM EMP WHERE ENAME='KING')
                    
                    
                    
                    
                    
 SELECT * FROM DEPT
 WHERE DEPTNO IN(SELECT DEPTNO FROM EMP WHERE COMM IS NOT NULL)
 
 
 SELECT MIN(SAL),DEPTNO FROM EMP
 WHERE DEPTNO SOME
  (SELECT DEPTNO FROM DEPT);
  
  
  SELECT  DEPTNO,MIN(SAL),MAX(SAL) FROM EMP
  GROUP BY DEPTNO
  
  
  SELECT VSIZE(SAL),LENGTH(SAL),SAL,VSIZE(ENAME),ENAME FROM EMP
  
  SELECT * FROM EMP
  WHERE SAL>(SELECT MIN(SAL) FROM EMP)
  
  
  
  SELECT  *  FROM  DEPT
  
SELECT SYSDATE+10/(24*15)FROM DUAL
SELECT * FROM USER_TABLES
WHERE TABLE_NAME= 'WRI$_ADV_OBJECTS'
SELECT DEPTNO,MIN(SAL) FROM EMP
WHERE DEPTNO=(SELECT DEPTNO FROM EMP
                WHERE SAL>(SELECT SAL FROM EMP
                            WHERE DEPTNO=20)
                            
                );
                
select deptno,min(sal) from emp
group by deptno
having avg(sal)=(select avg(sal) from emp
                    where deptno=20);
                    
select ename,sal,deptno from emp
where sal in(select max(sal) from emp
                group by deptno
                )
 
select  job,deptno from  emp
group by job,deptno
having deptno=00
order by 2
SELECT * FROM EMP
WHERE (DEPTNO,SAL) IN (SELECT EMP.DEPTNO,SALGRADE.HISAL FROM EMP,SALGRADE
                            GROUP BY DEPTNO,HISAL)
  
CREATE TABLE XX ( NAME VARCHAR2(10));
INSERT INTO XX VALUES('SUCHI'); 
ALTER TABLE XX MODIFY NAME VARCHAR2(20);
SELECT * FROM XX ;   
DESC XX
SELECT ENAME, SAL 
 FROM EMP
WHERE SAL >ANY(1250,1500,1600); 
SELECT ENAME,SAL,EMPNO,DEPTNO FROM EMP
WHERE SAL>ALL(SELECT AVG(SAL) FROM EMP
                GROUP BY DEPTNO)
SELECT ENAME,SAL,EMPNO FROM EMP                         
WHERE SAL> ANY(SELECT SAL FROM EMP
                WHERE DEPTNO=10 AND JOB<>'CLERK')   
                                              
                SELECT SAL FROM EMP
                WHERE DEPTNO=10 AND JOB='CLERK';
                
 SELECT * FROM XX
 
 
select * from emp
where empno NOT in(select mgr from emp
               where mgr  is not null)
                 
               select count(*) from USER_TAB_COLUMNS
               where table_name='DEPT'
               
               select ENAME,mgr from emp
               where mgr  is NOT null
               
               
 CREATE SEQUENCE S         INCREMENT BY 1
                               START WITH 1 
                               MAXVALUE 5;
                               
                               DECLARE 
                               V VARCHAR2(30);
                               BEGIN
                                FOR I IN 1..10
                                LOOP
                                 V :=V||' '||I
                                  I=I+1
                                  ENDLOOP;
                                  DISPLAY(V);
                                 END;
                                 
INSERT INTO XX VALUES(S.NEXTVAL)

SELECT S.NEXTVAL FROM DUAL


SELECT * FROM USER_SEQUENCES
WHERE SEQUENCE_NAME='S'


SELECT COUNT(*) FROM USER_TYPES

      
