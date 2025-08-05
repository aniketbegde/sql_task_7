--DOMAIN--

--domain 1

create domain email_address_domain as varchar
check (values ~* '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$'
);

create table student (
id serial primary key,
name varchar,
mobile_no varchar,
age int,
email email_address_domain
)

insert into student (id, name, mobile_no, age, email) 
values (01, 'raje', '19021630', 50, 'maharaj@gmail.com');

select * from student;

insert into student values (02, 'sambhu', '14051657', 32, 'sambhu@gmail.com');

select * from student;


insert into student 
values (03, 'vitthal', '1236589', 54, 'vitthal@gmail.com'), 
(04, 'kashi', '7896542', 57, 'kashi@gmail.com'),
(05, 'madhav', '57896542', 67, 'madhav@gmail.com');

select * from student;



--domain 2

create domain username as varchar
check (value ~ '^[A-Za-z0-9_]{3,20}$'
);


--domain 3

create domain loan_type as varchar
check (value in ('personal_loan', 'mortgage', 'car_loan', 'student_loan')
);

select * from student;
