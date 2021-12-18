--1. List all customers who live in texas

select * from customer;

select * from address;

select customer.first_name ,customer.last_name ,customer.address_id,address.district 
from customer 
join address 
on customer.address_id =address.address_id
where address.district like 'Texas';

--2. Get all payments above $6.99 with the customer's Full Name

select * from customer; 
select * from payment;



select first_name,last_name,amount
from customer 
join payment 
on customer.customer_id =payment.customer_id
where amount > 6.99;

--3. Show all customers names who have made payments over $175(use subqueries)

select customer_id , first_name ,last_name  
from customer
where customer_id in(
	select customer.customer_id
	from customer 
	join payment 
	on customer.customer_id =payment.customer_id
	where amount > 175
);

--4. List all customers that live in Nepal (use the city table)

select * from city;

select * from customer;

select * from address;
select * from country;


select first_name,last_name,country
from customer 
join address 
on customer.address_id = address.address_id
join city  
on city.city_id = address.city_id 
join country  
on city.country_id = country.country_id 
where country like 'Nepal';

--5. Which staff member had the most transactions?


select * from staff;

select first_name,last_name,staff.staff_id,count(amount) as most_transactions 
from payment 
join staff
on payment.staff_id = staff.staff_id
group by first_name,last_name,staff.staff_id 
order by Most_Transactions desc 
fetch first 1 row only;

--6. How many movies of each rating are there?

select * from film;

select rating, count(title) as Number_of_movies
from film 
group by rating 
order by Number_of_movies asc;

--7.Show all customers who have made a single payment above $6.99 (Use Subqueries)

select customer_id , first_name ,last_name  
from customer
where customer_id in(
	select customer.customer_id
	from customer 
	join payment 
	on customer.customer_id =payment.customer_id
	where amount > 6.99
);

--8) How many free rentals did our stores give away?

select * from rental;
select * from payment;

select count(rental.rental_id) as total_number_of_free_rentals
from rental 
join payment 
on rental.rental_id=payment.rental_id 
where amount = 0;


