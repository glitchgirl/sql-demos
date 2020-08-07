drop database candy_store;

show databases;
create database candy_store;
use candy_store;
-- sql comment
create table inventory (
	type_candy varchar(25),
    count INT,
    price decimal,
    weight INT,
    flavor varchar(25)
);

create table customers (
	user_ID int NOT NULL auto_increment key,
    user_name varchar(25),
    user_address varchar(100)
);

create table orders(
	order_ID int not null auto_increment key,
    customer_id int not null REFERENCES customers(user_ID),
	price decimal(4,2)
);

insert into orders (customer_id,price) value (2,10);
select * from orders;

show tables;
desc orders;
desc inventory;
INSERT into inventory (type_candy, count, price, weight, flavor)
VALUES ("gummy worms", 18, 12.00, 1,"sour" );
insert into inventory(type_candy, count, price, weight, flavor)
values ("reeses pieces", 25, 1.50,3,"choco peanut");

insert into inventory(type_candy, count)
values("homemade", 4);

select type_candy from inventory;

select type_candy, count 
from inventory 
where price < 5;

SELECT orders.order_ID, customers.user_name
FROM orders
RIGHT OUTER JOIN customers 
ON orders.customer_id=Customers.user_ID;


update inventory
set count = 20
where
type_candy = "reeses pieces";

delete from inventory where type_candy = "reeses pieces";

select * from inventory where type_candy like 'r%';

DROP TABLE inventory;

drop database candy_store;


insert into customers(user_name,user_address)
values("lyndia","123 good street");
insert into customers(user_name,user_address)
values("erika","124 good street");

select * from customers;