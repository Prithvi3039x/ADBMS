/* Filtering data from tables*/
/* where, select, distinct, and, or, not, in, not in, between, like, limit, is null*/

create database organization;
use organization;

create table employee( Eid int not null primary key,
 f_name varchar(50), 
 l_name varchar(15), 
 gender char,
 role varchar(15), 
 dept varchar(15), 
 manager_id varchar(10));
 
desc employee;

insert into employee values 
(1,"Atharv","Pawar","m","founder","IT",101),
(2,"Prithvi","Patil","m","co-founder","IT",102),
(3,"Shruti","Pingle","f","founder","IT",103),
(4,"Samyak","Shinde","m","co-founder","IT",104),
(5,"Rochana","Kadam","f","founder","IT",105);

select * from employee;
update employee set role = "Team Lead" where Eid = 1;

select distinct dept from employee order by dept;

select * from employee where role = "team lead" and dept ="it";

select * from employee where role = "manager" and dept ="it";
select * from employee where role = "manager" or dept ="it";

select * from employee where role in( "manager","it");
select * from employee where role in( "founder","it");

select * from employee where role not in( "founder","it");

alter table employee add column experience int;
update employee set experience = null where Eid = 1;
update employee set experience = 10 where Eid = 2;
update employee set experience = 5 where Eid = 3;
update employee set experience = 6 where Eid = 4;
update employee set experience = 10 where Eid = 5;

select * from employee;

select * from employee where experience between 1 and 6;
select * from employee where experience = 1 or experience = 6;

select * from employee where l_name like "p%";

select * from employee order by experience limit 2;

select * from employee where experience is null;
select * from employee where experience is not null;









