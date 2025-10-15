-- constraint --> are rules and regulation which don't allow invalid data entry in the table
-- (1). Not Null

create database krish;
use krish;
create table test(id int);
insert into test values(10), (11), (10), (Null);
select * from test;


create table test2(id int not null);
insert into test2 values(10), (11), (112), (23);
insert into test2 values(10), (11), (null);  -- this will give error

create table test3(id int unique);
insert into test3 values(10), (11), (19), (11); -- duplicate value error

create table test4(id int, gender varchar(20));
insert into test4(id) values(10), (11), (19), (11);
select * from test4;

create table test6(id int, gender varchar(20) default 'male'); -- default
insert into test6(id) values(10), (11);
select * from test6;

create table test7(id int check (id>5), gender varchar(20) default 'male'); -- check
insert into test7(id) values(10);
insert into test7(id) values(11);
select * from test7;

create table test8(id int check (id>5), gender varchar(20) check (gender in ('male', 'female') ) ); -- check table
insert into test8(id, gender) values(10, 'male');
insert into test8(id, gender) values(11, 'transgender'); -- this will give error
select * from test8;

create table test9(id int check (id>5), gender varchar(20),
constraint db_test9_gender_chk check ( gender in ('male', 'female') ) ); -- check 

insert into test9(id, gender) values(10, 'male');
insert into test9(id, gender) values(11, 'transgender');

CREATE TABLE product(pid INT PRIMARY KEY, pname VARCHAR(20));
insert into product values(10, 'samsung'); 
-- insert into product values(10, 'iphone');   
insert into product values(11, 'iphone');   
select * from product;   

-- With foreign key
create table orders2(order_id int, price int, pid int,
foreign key (pid) references product(pid));

insert into orders2 values(1981, 200, 101), (1982, 250, 102), (1983, 275, 101);
insert into orders2 values(1984, 500, 108);
select * from orders2;

-- without foreign key (every data will be inserted independent from product table)
create table orders(order_id int, price int, pid int);
insert into orders values(1981, 200, 9082), (233, 5564, 345), (3434, 345, 3456);
select * from orders;

create table employees(employee_id int primary key, employee_name varchar(20), employee_mailid varchar(20));
insert into employees values(101, 'krish', 'krish@gmail.com'), (102, 'vedang', 'vedang@gmail.com');
select * from employees;

-- ✅ Table Creation with Constraints
CREATE TABLE department (
    department_id INT,
    department_name VARCHAR(20) CHECK (department_name IS NOT NULL),
    department_sub VARCHAR(20),
    UNIQUE(department_id)
);

-- ✅ Data Insertion (with NULL & Unique ID)
INSERT INTO department (department_id, department_name, department_sub)
VALUES (NULL, 'HR', 'Recruitment');

INSERT INTO department (department_id, department_name, department_sub)
VALUES (101, 'Finance', 'Payroll');

INSERT INTO department (department_id, department_name, department_sub)
VALUES (NULL, 'IT', 'Infrastructure');

select * from department;

  
