select*from film;
select first_name, last_name from customer;
select title from film order by title;
select*from customer limit 5;
select first_name, last_name, email from customer limit 5;
select distinct first_name, last_name from customer;
select distinct rating from film;
select*from actor;
select distinct first_name from actor order by first_name;
select*from customer where store_id = '1';
select first_name, last_name from actor where first_name = 'Nick' and last_name = 'Degeneres';
select*from customer where first_name = 'Mary' and email = 'mary.smith@sakilacustomer.org'