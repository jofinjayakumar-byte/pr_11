create database jofin_DB;
use jofin_DB;
create table department(
  department_ID int primary key,
  department_name varchar(30)
);
create table student(
  studet_ID int primary key,
  student_name varchar(50),
  department_ID int
);
create table course(
  course_ID int primary key,
  course_name varchar(50),
);
create table enrollment(
  enrollment_ID int primary key,
  student_ID int,
  course_ID int
);
insert into department values
 (101,'computer sciece'),
 (102,'Information technology'),
 (103,'commerce');
insert into student values
 (1,'jofin',101)
 (2,'Abishek',102)
 (3,'jeevan',103)
insert into course values
 (201,'DBMS'),
 (202,'PYTHON'),
 (203,'JAVA');
insert into enrollment values
(301,1,201),
(302,2,202),
(303,3,203);
create view student details as
select
     B.student_Name,
     C.course_Name,
     D.department_name
from student
     join enrollment E
       ON 8.student_ID.e.student_ID
     join course E
       ON e.course_ID.c.course_ID
     join department D
       ON 8.department_ID = d.department_ID;
select*from students details;
  

