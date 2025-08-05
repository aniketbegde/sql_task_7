--ENUM--

--enum 1

create type student_status as enum ('enrolled', 'graduated', 'on_leave');

alter table student add column status student_status;

select * from student;

update student set status = 'enrolled';

select * from student;

--enum 2

select * from student;

create type student_grade as enum ('A', 'B', 'C', 'D');

select * from student;

alter table student add column grade char;

select * from student;

update student set grade = 'A';

select * from student;

--enum 3

create type gender as enum('male', 'female', 'non_binary');

alter table student add column gender varchar

select * from student;

update student set gender = 'male';

select * from student;











