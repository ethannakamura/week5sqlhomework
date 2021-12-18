--create table <tablename>(
--  specifying <column name> <datatype> constraints
--  specifying <column name> <datatype> constraints
-- );

create table customer(
-- write columns here
	customer_id INT primary key,
	--serial is an auto incrementing integer
	--as data is added to the customer table, we don't need to specificy a 
	--customer ID the serial column will automatically provide an unused integer
	--if we add one customer they're get customer id1,id2, and so on
	first_name VARCHAR(100),
	--VARCHAR you're specifying the maximum length of the string
	--A comma separates the coluns
	last_name VARCHAR(100)
);

select * from customer c 

create table tickets(
	ticket_id INT primary key,
	customer_id INT not null,
	FOREIGN KEY (customer_id) references customer(customer_id),
	movie_id I not null,
	FOREIGN KEY (movie_id) references movies(movie_id),
	payment_amount numeric(3,2),
	seat VARCHAR(3)
	);

select * from tickets t 

create table movies(
	movie_id INT primary key,
	title VARCHAR(40),
	genre VARCHAR(40)
	);

select * from movies m 

create table concessions(
	sales_id INT primary key,
	items_purchased VARCHAR(80)
	);

select * from concessions c 