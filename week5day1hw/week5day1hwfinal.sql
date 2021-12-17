-- 1. How many actors are there with the last name ‘Wahlberg’?

select *
from actor 

select count(last_name) 
from actor
where last_name = 'Wahlberg';

--Answer: 2

-- 2. How many payments were made between $3.99 and $5.99?

select *
from payment 

select count(amount)
from payment
where amount between 3.99 and 5.99;  

--Answer: 5,566 payments

-- 3. What film does the store have the most of? (search in inventory)

select * from inventory;

select * from film;

select inventory.store_id,film.title,count(inventory.film_id) as filmcount
from inventory
join film
on inventory.film_id = film.film_id 
group by inventory.store_id,film.title
order by filmcount desc;

--Answer: Store id 1 has the 5 copies of the film title Curtain Videotap.

-- 4. How many customers have the last name ‘William’?

select count(last_name)
from customer
where last_name ='William';

-- Answer: No customers have the last name William.

-- 5. What store employee (get the id) sold the most rentals?

select *
from staff

select *
from rental

select first_name, last_name, count(rental_id) as "rentals sold"
from staff , rental 
where staff.staff_id = rental.staff_id 
group by rental.staff_id,staff.first_name,staff.last_name
order by count(rental_id) desc;
--fetch first 1 row only;

--Answer: Mike Hillyer sold the most rentals

-- 6. How many different district names are there?

select count(distinct district)
from address;

--Answer: 378 differently named districts

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

select * 
from film_actor;

select * 
from film;

select title, film.film_id,count(film_actor.actor_id) as actorcount
from film, film_actor  
where film.film_id = film_actor.film_id 
group by title , film.film_id
order by actorcount desc;

-- Answer: Lambs Cincinatti has 15 actors

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

select * from customer;

select store_id as "specific store",count(last_name) as "each customer w/ last name ending in 'es'"
from customer
where store_id = 1 and last_name like '%es'
group by store_id;

--Answer = 13 customers with last names ending in es

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--    with ids between 380 and 430? (use group by and having > 250)
--    between 380 and 430? (use group by and having > 250)

select p.amount,count(distinct(r.rental_id))
from rental r, payment p 
where r.rental_id = p.rental_id and r.customer_id between 380 and 430
group by p.amount
having count(distinct(r.rental_id)) > 250;

-- Answer: amount .99 = 268 payments, 2.99 = 290 payments, 4.99 = 281 payments

-- 10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

select *
from film;

select count (rating) as "total count of movies", rating as "rating categories"
from film
group by rating
order by rating;

--Answer: There are 5 rating cateogires 
--Answer: PG13 hold the most ratings

