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
 
 select actor_id, last_name, first_name from actor where last_name='DAVIS';
 
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
    
 select * from actor;   
 select first_name, actor_id from actor where actor_id between 3 and 18 or first_name != 'ED';
 
 
 
 select * from actor last_name, first_name, a where FIRST_name = 'NICK' OR FIRST_NAME 'GRACE';