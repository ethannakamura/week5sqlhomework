INSERT INTO customer(customer_id,first_name,last_name)
VALUES( '185','James','Donaldson');
	
INSERT INTO customer(customer_id,first_name,last_name)
VALUES('186','Dean','Stone');

select * from customer  
--

INSERT INTO movies(movie_id, title, genre)
VALUES( '777','Jaws','Thriller');

INSERT INTO movies(movie_id, title, genre)
VALUES( '778','The Shining','Horror');

select * from movies m 

--
INSERT INTO tickets(ticket_id, customer_id, movie_id, payment_amount,seat)
VALUES( '123','185','777','5','D53');
	
INSERT INTO tickets(ticket_id, customer_id, movie_id, payment_amount,seat)
VALUES('124','186','778','9','C33');

select * from tickets t 
--

INSERT INTO concessions (sales_id, items_purchased)
VALUES( '3338','gummy worms twizzlers small popcorn coke');

INSERT INTO concessions (sales_id, items_purchased)
VALUES( '3339','goobers sour punch straws sprite nachos');

select * from concessions c 