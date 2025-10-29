use sakila;
select * from actor;
select * from film_actor;

with film_cte as 
(select * from film_actor where actor_id = 1
)
select actor.actor_id, film_id from actor join film_cte on actor.actor_id = film_cte.actor_id;

-- set --> it is used to combine output of two or more query 
-- union --> use to combine two quesris and not duplicate allowed
-- union --> allow duplicate
-- to use it both queries must have same coloumns
-- position must be same (coloumns)

select * from actor where actor_id <= 3
union
select * from actor where actor_id between 4 and 6;

-- create a series of number from 1 to 10

with cte as (
select 1 as num) -- base case

select * from cte;
-- RECURSIVE CTE

with recursive cte as (
select 1 as num -- base case
union
select num+1 from cte
where num < 10)  -- end case
select * from cte;

