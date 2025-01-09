show databases;

use ex;
show tables;
describe employees;

select * from employees;
select first_name, last_name from employees;

select first_name, last_name, department_number from employees 
where department_number =6;

select * from paid_invoices where payment_total >= 2500;
select * from customers where customer_state like 'IL';

select * from customers order by customer_last_name;
