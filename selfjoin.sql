create database university;
use db2;
drop table student;
create table student(ST_id int ,ST_name varchar(255),course_ID int ,enroll_year int);
insert into student(ST_id ,ST_name ,course_ID ,enroll_year ) values
("112","areeba","1","2019"),
("113","aiman","2","2019"),
("112","areeba","3","2019"),
("114","maheen","4","2019"),
("112","areeba","5","2019");
select   A.ST_id as ST_id ,B.course_ID as course_id ,A.ST_name from student A,Student B 
where A.ST_id=B.ST_id and  A.course_ID <> B.course_ID ; 