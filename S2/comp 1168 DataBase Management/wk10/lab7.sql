-- Q1
	-- use ap;
	-- show tables;
	 select * from ap.invoices;
     select * from ap.vendors;
SELECT 
    COUNT(*) AS No_of_Payment,  
    SUM(payment_total) AS Total_Payment_Amount,
    AVG(payment_total) AS AverageAmount, 
    round(Min(payment_total), 2) AS MinimumPayment,  
    round(MAX(payment_total), 2) AS MaximumPayment  
FROM    ap.invoices
WHERE   payment_total > 0;  

-- A
SELECT 
	av.vendor_id,
    COUNT(*) AS No_of_Payment,  
    round(SUM(payment_total),2) AS Total_Payment_Amount,
    round(AVG(payment_total),2) AS AverageAmount, 
    round(Min(payment_total), 2) AS MinimumPayment,  
    round(MAX(payment_total), 2) AS MaximumPayment  
FROM    ap.invoices 
inner join ap.vendors av
on ap.invoices.vendor_id = av.vendor_id
WHERE   payment_total > 0
Group by av.vendor_id
order by av.vendor_id ASC;
-- B
SELECT 
	av.vendor_id,
    av.vendor_name,
    COUNT(*) AS No_of_Payment,  
    SUM(payment_total) AS Total_Payment_Amount,
    AVG(payment_total) AS AverageAmount, 
    Min(payment_total) AS MinimumPayment,  
    MAX(payment_total) AS MaximumPayment  
FROM    ap.invoices ai
inner join ap.vendors av
on ai.vendor_id = av.vendor_id
WHERE
    payment_total > 0
Group by av.vendor_id
order by av.vendor_id ASC;

-- Q2
select 
	av.Vendor_state As State,
    count(distinct av.vendor_id)As TotalVendors,
    Sum(ai.payment_total) As TotalPayments
from ap.vendors av
inner join ap.invoices ai
on av.vendor_id = ai.vendor_id
Group by State;
-- Q2a
select 
	av.Vendor_state As State,
    av.vendor_city As City,
    av.vendor_zip_code As ZipCode,
    count(distinct av.vendor_id)As TotalVendors,
    Sum(ai.invoice_total) As InvoicedAmt
from ap.vendors av
inner join ap.invoices ai
on av.vendor_id = ai.vendor_id
Group by av.vendor_state, av.vendor_city, av.vendor_zip_code
order by State;

-- Q3
-- select * from om.items;
SELECT 
	CONCAT(c.customer_last_name, ', ', c.customer_first_name) AS customer_name, 
	o.order_date, 
	COUNT(*) AS  No_of_Orders_placed,
    Sum(i.unit_price) As OrderTotalAmt
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
select 
	department_name, 
    count(*) As No_of_Employees
from ex.departments d
inner join ex.employees e
on e.department_number = d.department_number
Group by department_name
order by dempartment_name;

-- Q4a
select 
	ifnull(department_name, 'Total = '), count(*)
from ex.departments d
inner join ex.employees e
on e.department_number = d.department_number
Group by department_name with rollup;