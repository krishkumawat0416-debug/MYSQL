-- view are virtual tables that is used to make your query look simple
-- it saves our query 
-- make the code reusable
-- it is used to provide the consistent view of your table
-- for security view its very usefull

-- complex query view
use sakila;
create view v_actor as 
select first_name, film_id from actor join film_actor where actor.actor_id = film_actor.film_id;

select * from v_actor;
-- view for specific column (security)

create view v_first as
select first_name from actor;

select * from v_first;

-- ctas (create table as select)

create table krish110 as
select * from actor where actor_id between 2 and 5 ;

create view v_krish as  -- updatable
select actor_id, first_name from krish110;

select * from v_krish;
SET SQL_SAFE_UPDATES = 0;
update v_krish set first_name = "xyz";
select * from v_krish;
-- select * from krish110;

-- INTERVIEW QUESTION
-- WHAT IS DIFFRENCE BETWEEN MATERLIZE VIEW AND NON-MATERLIZE VIEW

/*
-- INDEX --> IS DATA STRUCTURE ACCESS DATA FASTER IN THE DATA BASE
-- TYPE OF INDEX : 
		  1. CLUSTERED INDEX -->IS DETERMINES THE PHYSICAL ORDER OF DATA IN A TABLE
          2. NON CLUSTERED INDEX  --> is a seprate structre
		  3. COMPOSITE INDEX
 
*/

explain select * from actor where last_name  = "CHASE";        
-- alter table actor add primary key(actor_id);
      
select * from actor;      
explain select * from actor where actor_id = 4;  -- use of index
explain select * from actor where first_name  = "nick"; -- no index use

create index idx_student on actor(actor_id);  -- index create (non - clustured index)

show indexes from actor;

create index idx_actor_c on actor(actor_id, first_name); -- composite index created(non-clustured)

 