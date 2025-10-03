show databases;  -- will show all database in mysql

use sakila;  -- use sakila as a database

-- show table to see all table
show tables; 

-- select statment (DQL)  * access  all coloumn
select * from actor;
 
 describe actor;  -- will give table info ( coloum, datatype, relationships and more)
 
 select actor_id, first_name from actor;
 
 select ACTOR_ID, first_name from ACTor;  -- select statement table it can be in any case format
 
 select actor_id, first_name,
 actor_id, last_name
 from actor;
 
 select actor_id, first_name,
 actor_id*5
 from actor;
 
 select * from actor where actor_id = 5;
 
 select * from actor where first_name='NICK';  -- data should be case sansitive
 
 select * from actor where last_name='DAVIS'
 
 
 
 -- not equal to 
 
 select * from actor where actor_id != 5;
 select * from actor where actor_id <> 5;
 
 select * from actor where first_name='NICK' and actor_id=44;
 
 select * from actor where first_name='NICK' or actor_id=46;
 
 select * from actor where first_name='NICK' or actor_id!=46;
 
 select * from actor where actor_id>2 and actor_id<6;
 
 select * from actor where actor_id between 2 and 6;  -- lower to higher
 
 select * from actor where actor_id not between 2 and 6;  
 
 select * from actor where actor_id=2 or actor_id=6;
  
 select * from actor where actor_id in (2,6,8);
    

 select first_name, actor_id from actor where actor_id between 3 and 18;
 
 
 
select * from actor where first_name like 'S';

select * from actor where first_name like '_%NN%_';

SELECT first_name, last_name from actor where last_name like 'B%R_'; 

select first_name from actor where first_name like '____';

select * from actor where actor_id between 2 and 90  and first_name like '_%S%A_';

select first_name, char_length(first_name), lower(first_name) from actor;

select first_name, last_name, concat(first_name,' ' ,last_name) from actor;

select first_name, last_name, concat_ws(' ', 'MR', first_name ,last_name) from actor;

-- substr ( to extract some data)
-- coloumn , total character, position, start form 1

select char_length(trim('  hey  '));

select first_name, replace(first_name, 'E', '#') from actor;

select round(11.6, 1);

select round(11.67, 1);

select round(50.627, -2);

select round(546.627, -2);

select truncate(6546.644, 2);

select mod(10,2), floor(6.99999999), ceil(4.0002);

-- date function [very very important]
-- date pr kaam krne ke liye

select current_date(), current_time(), current_timestamp(), now();

-- adddate

select now(), adddate( now(), 40);

select now(), adddate( now(), interval 4 month);

select now(), adddate( now(), interval 4 hour);

select now(), adddate( now(), interval -2 day);

-- year and month
select now(), year(now()), last_day(now());

-- extract

select now(), extract(quarter FROM NOW());

select now(), date_format(now(), 'year is %y, my month is %M');

use sakila;

select payment_date, year(payment_date), extract(month from payment_date);

use sakila;
select * from payment;

select max(amount), min(amount), sum(amount), count(amount), avg(amount) from payment;

select distinct amount, customer_id from payment;

select payment_id, year(payment_date), amount from payment where year(payment_date) = 2005;

select count(distinct customer_id) from payment where month(payment_date)=06;

select max(amount), avg(amount), max(amount)- avg(amount) 
from payment where amount > 2 and year(payment_date) = 2006;

use sakila;
select * from payment;
select customer_id, count(customer_id) from payment
group by customer_id having count(customer_id)>30;


select amount, count(*), sum(amount) from payment where amount > 2 group by amount
having count(*) > 3000;

-- new column name used --> as 

select amount, count(*) as totalcount, sum(amount) from payment where amount > 2 group by amount
having totalcount > 3000;

select staff_id, count(customer_id) from payment  group by staff_id;

select customer_id, sum(amount) from payment group by customer_id;

select amount, count(customer_id), count(distinct customer_id) from payment group by amount;

select * from payment;

select month(payment_date), sum(amount), count(amount) 
from payment group by month(payment_date);

select amount, count(amount), sum(amount)as transctions from payment 
where year(payment_date)= 2005 group by amount having count(amount)>15;