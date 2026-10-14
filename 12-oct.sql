create database CompanyDB;
use CompanyDB;

create table Employees(
Emp_id int primary key,
Emp_name varchar(50),
Emp_salary int,
Join_date date);

create table Department(
Dept_id int primary key,
Dept_name varchar(50));

alter table Employees
add column Email varchar(100);

alter table department
add column dept_location varchar(100);

alter table employees
add column phone varchar(15) not null;

alter table employees
modify Emp_name varchar(100);

alter table Employees
add column Dept_id int;

alter table Employees
add foreign key (Dept_id)
references Department(Dept_id);

desc Employees;
desc department;

alter table Department
drop primary key;


alter table Employees
rename column Emp_name to EmployeeName;

alter table Employees
drop column phone;

rename table Employees to EmployeeDetails;

drop table Department;


use companydb;
create table EmP (EmpId int NOT NULL , FirstName varchar(10), LastName varchar (10), EmpAge int);
insert into EmP values(1, 'Riya','Sharma',20);
select*from EmP;
desc EmP;
create Table Emp1(EmpId int NOT NULL Unique , FirstName varchar(10), LastName varchar (10), EmpAge int);
insert into Emp1 (EmpID,FirstName,LastName,EmpAge) values(1, 'Riya','Sharma',20),(2, 'Sakshi','Sharma',20);
select*from Emp1;
insert into Emp1(EmpID,FirstName,LastName,EmpAge) values(3, 'Samyak','Sharma',20); 
insert into Emp1(EmpID,FirstName,LastName,EmpAge) values(4, 'Samyak','Sharma',20);
create Table Emp2(EmpId int NOT NULL Unique , FirstName varchar(10), LastName varchar (10), EmpAge int, check(EmpAge>=20));
insert into Emp2 values(1,'Samyak','Shinde',21);
insert into Emp2 values(2,'Smayan','Shinde',19);
insert into Emp2 values(3,'Zerka','Jeff',20);
alter table Emp2 add column Salary int, add check (salary>=50000);
insert into Emp2 values(4,'tobi','Jizzle',21,51000);
insert into Emp2 values(5,'JJ','Olatunji',21,50000);
select*from Emp2;
update Emp2 set Salary=50000;

create Table Emp7 (EmpId int Primary key , FirstName varchar(10), LastName varchar (10), EmpAge int);
insert into Emp7 values(1, 'Samyak','Shinde',20);
alter table Emp7 add column Salary int ;
alter table Emp7 add constraint chk_EmpAge_Salary check(EmpAge>=20 and salary>=50000);
desc Emp7;
insert into Emp7 values(2,'JJ','Olatunji',21,50000);
select*from Emp7;
update Emp7 set Salary = 52000 where EmpID=1;
alter table Emp7 drop check chk_EmpAge_Salary;
insert into Emp7 values(3,'JS','Olatunji',11,4000);
select*from Emp7;

create Table Emp3(EmpId int NOT NULL Unique , FirstName varchar(10), LastName varchar (10), EmpDept varchar(10) default'Operations');
insert into Emp3(EMpId, FirstName,LastName) values (1,'Samyak','Shinde');
select*from Emp3;


create table emp8(empId int primary key, fname varchar(10), lname varchar(10), age int , salary int);
insert into emp8 values(1, "prithviraj" , "patil", 21 , 510000);
alter table emp8 add check(salary > 50000);
insert into emp8 values(2, "atharv" , "patil", 21 , 51000);
insert into emp8 values(3, "samyak" , "patil", 21 , 510000);

select * from emp8;

show create table emp8;
alter table emp8 drop check emp8_chk_1;

create index demoindex on emp8(fname);
show indexes from emp8;
create index demoindex2 on emp8(fname,lname);
drop index demoindex on emp8;
drop index demoindex2 on emp8;
