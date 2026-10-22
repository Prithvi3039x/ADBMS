create database basicjoin;
use basicjoin;

create table emp(
e_id int primary key,
e_name varchar(50));

desc emp;

insert into emp values
(1,"Prithviraj"),
(2,"Atharv"),
(3,"Samyak"),
(4,"Shruti"),
(5,"Karan");

select * from emp;

create table projects(
p_id int primary key,
p_name varchar(50),
e_id int,
foreign key(e_id)
references emp(e_id));

insert into projects values
(11,"project 1",1),
(12,"project 2",2),
(13,"project 3",3),
(14,"project 4",4),
(15,"project 5",5);

desc projects;
select * from projects;

update projects set e_id = 2 where p_id = 14;

insert into projects values
(16,"project 6",null);

-- Inner Join --
select * from emp
join projects -- no need to mention inner join is defaultly inner join
on emp.e_id = projects.e_id;

-- fetching the employee name and project name they belong to
select e.e_name, p.p_name 
from projects p
inner join emp e
on e.e_id = p.e_id;


-- left join
select e.e_id, e.e_name, p.p_name
from emp e
left join projects p
on e.e_id = p.e_id;

select e.e_id, e.e_name, p.p_name
from projects p
left join emp e
on e.e_id = p.e_id;


-- right join
select e.e_id, e.e_name, p.p_name
from emp e
right join projects p
on e.e_id = p.e_id;

select e.e_id, e.e_name, p.p_name
from projects p
right join emp e
on e.e_id = p.e_id;

insert into projects values(17,"project 7",7),(18,"project 8",8);

select * from emp
left join projects
on emp.e_id = projects.e_id;

select * from projects
left join emp
on emp.e_id = projects.e_id;

-- Full Outer join using union 
-- Displays all the matching and non matching data from both tables

select * from emp
left join projects
on emp.e_id = projects.e_id
union
select * from emp
right join projects
on emp.e_id = projects.e_id;

-- display emp name who has not been assigned any projects

select emp.e_name, projects.p_name
from emp
left join projects
on emp.e_id = projects.e_id
where projects.e_id is not null;

select emp.e_name, projects.p_name
from emp
left join projects
on emp.e_id = projects.e_id
where projects.e_id is null;

