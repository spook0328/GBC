-- Q1
use ap;
show tables;
select * from ap.invoices;
select *
from ap.invoices ai
inner join ap.vendors av
on ap.vendor_id = av.vendor_id;


-- Q3
SELECT CONCAT(c.customer_last_name, ', ', c.customer_first_name) AS customer_name, 
       o.order_date, 
       COUNT(*) AS item_count
FROM om.customers c
INNER JOIN om.orders o ON c.customer_id = o.customer_id
INNER JOIN om.order_details od ON od.order_id = o.order_id
INNER JOIN om.items i ON i.item_id = od.item_id
GROUP BY customer_name, o.order_date
HAVING COUNT(*) > 1;

-- Q4
-- use ex;
-- Show tables;
-- select * from ex.departments;
-- select * from ex.employees;
select department_name, count(*)
from ex.departments d
inner join ex.employees e
on e.department_number = d.department_number
Group by department_name;

-- Q4a
select ifnull(department_name, 'Total = '), count(*)
from ex.departments d
inner join ex.employees e
on e.department_number = d.department_number
Group by department_name with rollup;