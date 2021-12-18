INSERT INTO sales_associate(sales_associate_id, first_name, last_name)
VALUES ('123','James','MichaelGeorge')

INSERT INTO sales_associate(sales_associate_id, first_name, last_name)
VALUES('124','Jimmy','Jones')

select * from sales_associate
--
INSERT INTO automotive_sales(invoice_id, new_car_id, used_car_id, yearr, make, model)
VALUES ('778','01','02','2017','Ford','Mustang')

INSERT INTO automotive_sales(invoice_id, new_car_id, used_car_id, yearr, make, model)
VALUES('779','02','04','2019', 'Ford','Raptor')

select * from automotive_sales
--
INSERT INTO customer(customer_id, invoice_id, first_name, last_name)
VALUES('998','778','James','MichaelGeorge')

INSERT INTO customer(customer_id, invoice_id, first_name, last_name)
VALUES('999','779','Jimmy','Jones')

select * from customer
--
INSERT INTO service_history(vin, days_since_last_service, days_overdue_for_service)
VALUES('234523','90','136')

INSERT INTO service_history(vin, days_since_last_service, days_overdue_for_service)
VALUES('656676','40','76')

select * from service_history
--

INSERT INTO servicing_appointment(service_ticket, appointment_time, appointment_reason, customer_id)
VALUES('456','0800','engine clicking','998')

INSERT INTO servicing_appointment(service_ticket, appointment_time, appointment_reason, customer_id)
VALUES('460','1200','oil change','999')

select * from servicing_appointment
--
INSERT INTO service_report(mechanic_id, first_name, last_name, recommended_future_service, customer_ordered_parts, service_cost)
VALUES('323','Jack','Steel','March 30','1233','200')

INSERT INTO service_report(mechanic_id, first_name, last_name, recommended_future_service, customer_ordered_parts, service_cost)
VALUES('324','Steve','Ram','May 5','3433','98')

select * from service_report