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



/* Aggregate functions */
/* COUNT SUM AVG MIN MAX */

select count(*) from employee ;
select count(Eid) from employee where dept="IT";
select min(experience) from employee;
select max(experience) from employee;
select sum(experience) from employee;

select f_name from employee 
where experience = (select max(experience) from employee);

select * from employee;

select dept, count(*) as emp_count
from employee group by dept;

select role, count(*) as emp_count
from employee group by role;

select gender, count(*) as emp_count
from employee group by gender;


/* HAVING clause: Each group produced by the group by clause is evaluated
by the having clause and if the result is true the row is included in the result set
the having clause was added to sql because the where keyword cannot be used with aggregate functions
*/

select dept, sum(experience) as total_exp
from employee group by dept
having total_exp >= 10 and total_exp <= 40;

select role, sum(experience) as total_exp
from employee group by role
having total_exp >= 10 and total_exp <= 40;

select manager_id, sum(experience) as total_exp
from employee group by manager_id
having total_exp >= 10 and total_exp <= 40;

select dept, count(Eid) 
from employee
group by dept
having count(Eid) > 2
order by count(Eid) desc;


select dept, sum(experience) as total_exp
from employee 
group by dept
having total_exp >= 10 or total_exp <= 30;

