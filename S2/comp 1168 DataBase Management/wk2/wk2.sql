-- Show databases;
-- Show tables;
-- Q1
select title, artist
from om.items
where artist = 'Umami';
-- Q2
select customer_first_name, customer_last_name, customer_zip
from om.customers
where customer_zip like '9%'
order by customer_first_name;
-- Q3
select vendor_id, vendor_name
from ap.vendors
where vendor_name like 'N%';
-- Q4
select *
from ex.customers
where customer_phone like '(309)%';
-- Q5
select invoice_id, invoice_total-payment_total-credit_total as balance
from ap.invoices
where invoice_total-payment_total-credit_total > 1000
order by balance DESC;
-- Q6
select invoice_id, invoice_total,Round (0.2* invoice_total,2) As Discount, Round (0.8*invoice_total,2) As TotalDue
from ap.invoices;
-- Q7
Select customer_id, Concat(customer_first_name, customer_last_name) As CustomerName
from ex.customers
where customer_first_name like '%a%'
or customer_last_name like '%a%';
-- Q8
select *
from om.orders
where order_date like '2014%' and shipped_date is Null;
-- Q9
select *
from ap.invoices
where invoice_total between 1000 and 1500;
-- Q10
select vendor_name, vendor_state
from ap.vendors
Where vendor_state in ('DC','FL','NJ','WI');
-- Q11
select distinct vendor_city
from ap.vendors
order by vendor_city;
-- Q12
select * from ex.customers
limit 5;
-- Q13
select * from ap.vendors
limit 53,3;


