use sakila;
select * from actor;
desc actor;

select count(actor_id), count(distinct actor_id) from actor;

select * from file_actor;

desc film_actor;

select actor.actor_id, actor.first_name, film_actor.actor_id, film_actor.film_id from actor
join film_actor where actor.actor_id = film_actor.actor_id;

