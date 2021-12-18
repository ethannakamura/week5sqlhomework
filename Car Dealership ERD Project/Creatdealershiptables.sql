
create table sales_associate(
	sales_associate_id INT primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

select * from sales_associate

create table automotive_sales(
	invoice_id INT primary key,
	new_car_id INT,
	used_car_id INT,
	yearr INT,
	make VARCHAR(100),
	model VARCHAR(100)
);

select * from automotive_sales

create table customer(
	customer_id INT primary key,
	invoice_id INT not null,
	FOREIGN KEY (invoice_id) references automotive_sales(invoice_id),
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

select * from customer

create table service_history(
	vin INT primary key,
	days_since_last_service INT,
	days_overdue_for_service INT
);

select * from service_history

create table servicing_appointment(
	service_ticket INT primary key,
	appointment_time INT,
	appointment_reason VARCHAR(100),
	customer_id INT not null,
	FOREIGN KEY (customer_id) references customer(customer_id)
);

select * from servicing_appointment

create table service_report(
	mechanic_id INT primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	recommended_future_service VARCHAR(100),
	customer_ordered_parts INT,
	service_cost NUMERIC (8,2)
);

select * from service_report