CREATE TABLE account(user_id serial PRIMARY KEY,
					username VARCHAR(50) UNIQUE NOT NULL,
					password VARCHAR(50) NOT NULL,
					email VARCHAR(355) UNIQUE NOT NULL, 
					last_login TIMESTAMP);

select*from account; 

CREATE TABLE patient(user_id serial PRIMARY KEY, 
					 first_name VARCHAR(50) UNIQUE NOT NULL,
					 last_name VARCHAR(50) NOT NULL,
					 email VARCHAR(355) UNIQUE NOT NULL,
					 signup_date DATE, 
					 mins TIMESTAMP);
					 
select*from patient;

CREATE TABLE person(customer_id serial PRIMARY KEY,
					first_name VARCHAR(20),
				   last_name VARCHAR(50) NOT NULL,
				   email_address VARCHAR (355),
				   address VARCHAR(50),
				   city VARCHAR(20) NOT NULL,
				   state_ VARCHAR(20) NOT NULL);
				   
select*from person;

select*from payment;
select COUNT (*) from payment;
select COUNT (DISTINCT payment_date) from payment;

select customer_id, amount from payment ORDER BY amount DESC LIMIT 15;

select customer_id, amount from payment WHERE amount BETWEEN 5 and 10;

select*from country;

select*from country WHERE country IN ('Algeria');

select customer_id, rental_id, return_date from rental WHERE customer_id IN ('0', '19') ORDER BY customer_id;

select customer_id, rental_id, return_date from rental WHERE customer_id = 7 OR customer_id = 13 ORDER BY customer_id;

select first_name, last_name from customer WHERE first_name LIKE 'Jen%';

select first_name, last_name from customer WHERE first_name LIKE '%er';

