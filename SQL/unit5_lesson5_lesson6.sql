select avg(amount) from payment;
--4.2006056453822965
select round(avg(amount), 2) from payment;
--4.20

select min(amount) from payment;
--0.00

select amount from payment order by amount;
--payment ordered from accending order 

select count(amount) from payment where amount = 0.00;
--24 payments with amount of 0.00  

select*from payment limit 10;

select customer_id from payment group by customer_id;

select staff_id, count(amount), sum(amount) from payment group by staff_id;
--A company is looking to give two employees a bonus based on performance.  
--The company decides that the employee who handled the most payments will receive the bonus.  
--Which employee handled the most payments, 
--and how much was the total of those payments they handled? 

select customer_id, sum(amount) from payment group by customer_id order by sum(amount) DESC limit 5;
--A company is looking to send coupons to customers who spend the least amount of money in their store 
-- they’re hoping to have them come in and spend more.  
--They need a list of those 5 customers who spend the least.

select customer_id, sum(amount) from payment group by customer_id;
select customer_id, sum(amount) from payment group by customer_id having sum(amount) > 200;
select store_id, count(customer_id) from customer group by store_id;
select store_id, count(customer_id) from customer group by store_id having count(customer_id)>300;
select*from store;

select rating, rental_rate from film where rating in ('R', 'G', 'PG');
--rating columns and rantel_rate prices in orger of r pg g

select rating, rental_rate from film where rating in ('R', 'G', 'PG') group by rating, rental_rate;
----rating columns and rantel_rate prices in orger sets of r pg g

select customer_id, count(amount) from payment group by customer_id having count(amount)>35;
--A company is looking to expand its customer base for their new credit card.  
--The requirements are that customers need to have at least a total of 35 transaction payments.
--What customers by their customer_id are eligible for the credit card?

select*from customer;
select*from payment;
--both have common column : customer_id

select*from customer inner join payment on payment.customer_id = customer.customer_id; 
--it combined both tables that shares sthe same data 

select*from customer inner join payment on payment.customer_id = customer.customer_id where first_name like 'A%';

select*from film limit 5;
select*from inventory limit 5;
--film_id and last_update column names in common

select film.film_id, film.title, inventory_id from film left outer join inventory on inventory.film_id = film.film_id;

select film.film_id, film.title, inventory_id from film left outer join inventory on inventory.film_id = film.film_id where inventory.film_id is null order by film.film_id;


