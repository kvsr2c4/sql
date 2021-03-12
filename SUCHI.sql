for rec in (SELECT TO_CHAR(123456789.32,'C099,99,99,99,999.90') FROM DUAL;
SELECT TO_DATE(456,'J') FROM DUAL;
SELECT  TO_CHAR(TO_DATE('&num','j'),'JSP') FROM DUAL;
SELECT * FROM EMP;
CREATE TABLE xx as select * from emp;
select * from xx;
truncate table xx;
rollback;
select ename from emp
where lower(trim(to_char(hiredate,'day')))='sunday';
select ename from emp
where deptno = :num; 
select  * from emp;
select to_char(to_date('31-dec-9999'),'j') from dual;

select deptno,job,min(sal),sum(sal) from emp
group by deptno,job;

select * from emp;
create user suchi identified by 1470;
conn suchi/1470
grant resource to suchi;
connect suchi/1470; 


declare 
     vno number:=10;
begin


  dbms_output.put_line('value is '||vno);

end;





SELECT ACOS(0)"Arc_Cosine"
FROM DUAL;
SELECT APPROX_COUNT_DISTINCT(sal) AS "Active Managers"
FROM emp;

SELECT ASCIISTR('65,66')
FROM DUAL;
SELECT CAST('22-OCT-1997'
AS TIMESTAMP WITH LOCAL TIME ZONE)
FROM DUAL;


SELECT SESSIONTIMEZONE, CURRENT_TIMESTAMP FROM DUAL;
select   current_timestamp from dual;
select sessiontimezone from dual;



create table t1(data varchar(50));
insert into t1 values('ArtADB1234e98745640@%&*');
insert into t1 values('975/5566/GF123/10-feb-12');
SELECT * FROM T1;

select regexp_SUBSTR(DATA,'[A-Z][a-z]+',1,1) FROM T1;
select regexp_SUBSTR(DATA,'[0-9]+',1,2) FROM T1;

select regexp_substr(data,'[0-9]+',1,2),data from t1;

select regexp_instr(data,'[@,%,0,/]+',1,1),data from t1;


SELECT * FROM T1;
SELECT REGEXP_COUNT(DATA,'\d{2}'),data FROM T1;


select regexp_count(data,'\d{5}') from t1;

select substr(data,instr(data,'@')+0) from t1;

select * from t1; 
select regexp_substr(data,'[^-]+',1,3) from t1;

select min(sal),max(sal),job from emp
group by job;

select *  from emp;

SELECT SYSTIMESTAMP FROM DUAL;

select current_timestamp,sessiontimezone ,systimestamp from dual;

select bin_to_num(1,0,0,1,1,0) from dual;

select trunc(sysdate,'mon'),to_char(sysdate,'') from dual;

select TO_CHAR(LAST_DAY(SYSDATE),'DD') from dual; 

select TO_CHAR(LAST_DAY('12-JAN-2020'),'DD') from dual; 

SELECT NEXT_DAY(NEXT_DAY(NEXT_DAY(NEXT_DAY(SYSDATE,'MON'),'MON'),'MON'),'MON') FROM DUAL;) loop
end loop;