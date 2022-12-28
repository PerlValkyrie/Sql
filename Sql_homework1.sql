-- Week 5 - Monday questions
-- 1. How many actors are there with the last name "Wahlberg"? 2.
select first_name, last_name 
from actor
where last_name like 'Wahlberg';

-- 2. How many payments were made between $3.99 and $5.99? 4,802
select count(payment)
from payment
where amount between 3.99 and 5.99;

-- 3. What film does the store have the most of? (search in inventory). Store 2, film 595 with 4. There are many others with 4.
select film_id, store_id, count(film_id)
from inventory
group by film_id, store_id 
order by store_id desc, count desc;

-- 4. How many customers have the last name 'William?'. None.
select customer_id, last_name
from customer
where last_name like 'William';

-- 5. What store employee (get the id) sold the most rentals?
select staff_id, count(inventory_id)
from rental
group by staff_id , inventory_id 
order by inventory_id desc;

-- 6. How many different distinct names are there? 599
select distinct customer_id, last_name 
from customer
group by customer_id, last_name 
order by customer_id desc;

-- 7. What film has the most actors in it? (use film_actor table and get film_id) actor_id: 198
select actor_id, sum(film_id)
from film_actor
group by actor_id 
order by actor_id desc

-- 8. From store_id 1, how many customers have a last name ending with 'es'? (use customer table) None
select first_name, last_name
from customer
where last_name like 'es';

-- 9. how many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
select customer_id, amount, count(amount)
from payment
where customer_id between 380 and 430
group by customer_id, amount
having amount > 2.50
order by customer_id desc;

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total? 5 categories with NC-17 with the most movies.
-- Total Rating Categories: 5
select rating, count(rating)
from film
group by rating 
order by rating desc;
-- Rating with the most movies: NC-17





