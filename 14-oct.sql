create database User;

use User;


create table customer(
c_id int,
c_name varchar(50),
city varchar(50),
product varchar(50),
price int);

desc customer;

alter table customer
add primary key (c_id);

insert into customer values
(1, "Atharv", "Sangli","Mobile",15000),
(2, "Samyak", "Pune","Laptop",40000),
(3, "Karan", "Satara","Mouse",300);

select * from customer;
select c_name,product from customer;

create table clonetable as select * from customer;
select * from clonetable;
drop table clonetable;

select c_name,city from customer;
select c_name,city from customer where c_id = 1;
select c_name,city,price from customer where price > 15000;
select c_name,city,price from customer where price < 15000;
select * from customer where c_id = 1;

select * from customer where city = 'Sangli';

select * from customer order by price;
select * from customer order by price desc;

select * from customer order by c_id desc;
select * from customer order by c_id;

select * from customer order by city;

select * from customer order by city,price;

select * from customer order by city desc,price asc;

select upper(c_name), lower(product) from customer
where c_id < 3;

alter table customer
add column l_name varchar (20);
desc customer;

update customer set l_name = "pawar" where c_id = 1;
update customer set l_name = "shinde" where c_id = 2;
update customer set l_name = "manjare" where c_id = 3;

select concat(c_name,' ',l_name) from customer;

select * from customer;
select substr(c_name, 1,1) from customer;
select substr(c_name, 1,2) from customer;

select instr(c_name, "a") as position from customer;











