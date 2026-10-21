use user;
select substr(c_name,1,3), instr(c_name,'a')
from customer where c_id < 3;

select now();
select now() as current_datetime;

alter table customer add column date date;
desc customer;
update customer set date = '2024-2-20' where c_id = 1;
update customer set date = '2024-8-24' where c_id = 2;
update customer set date = '2024-10-2' where c_id = 3;
select * from customer;

alter table customer drop date;
