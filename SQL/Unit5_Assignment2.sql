select*from film;
select*from film_actor;
select*from actor;

--inner join 
select*from film join film_actor on film_actor.film_id = film.film_id;

select*from actor join film_actor on film_actor.actor_id = film_actor.actor_id;

select film.film_id, film_actor.actor_id, actor.actor_id 
	from film join film_actor on film_actor.film_id = film.film_id
			  join actor on actor.actor_id = film_actor.actor_id;