alter table movies 
add column movie_rating VARCHAR(10);

select * from movies m 

alter table concessions 
add column price NUMERIC(8,2);

select * from concessions c 

alter table concessions 
drop column price;

select * from concessions c 