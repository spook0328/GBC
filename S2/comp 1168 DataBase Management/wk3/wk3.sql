-- Q1
select
customer_first_name, 
customer_last_name,
LEFT(customer_first_name, 1) As FirstInitial,
LEFT(customer_last_name, 1) As LastInitial
from om.customers;
-- Q2
select customer_id, 
concat(customer_first_name, customer_last_name) As CustomerFullName,
concat(LEFT(customer_first_name, 1), '.',LEFT(customer_last_name, 1)) As CustomerInitial
from om.customers;
-- Q3
select customer_id,
concat_ws('',customer_first_name, customer_last_name) As CustomerFullName,
concat_ws('.',LEFT(customer_first_name, 1),LEFT(customer_last_name, 1))As CustomerInitial
from om.customers;
-- Q4
select vendor_id, vendor_name, character_length(vendor_name) As NameLength
from ap.vendors;
-- Q5
select vendor_name, vendor_state, vendor_phone
from ap.vendors
order by length(vendor_name);
-- Q6
select emp_name, 
substring_index(emp_name, ' ',1) As FirstName,
substring_index(emp_name, ' ',-1) As LastName
from ex.string_sample;
-- Q7
SELECT vendor_name, vendor_phone, 
       REPLACE(vendor_phone, ' ', '-') AS VendorPhone
FROM ap.vendors;
-- Q8
select emp_id, emp_name
From ex.string_sample
order by cast(emp_id As unsigned);
-- Q9
select title As AlbumName, unit_price,
round(unit_price/2 ,6) As `unit_price/2`,
round(unit_price/2 ,2) As DiscountedPrice
From om.items;
-- Q10
SELECT 
emp_name,
SUBSTRING(emp_name, 1, LOCATE(' ', emp_name) - 1) AS FirstName,
SUBSTRING(emp_name, LOCATE(' ', emp_name) + 1) AS LastName
FROM ex.string_sample;
-- Q11
SELECT 
    invoice_number,
    (invoice_total - payment_total - credit_total) AS Balance,
    CASE 
        WHEN (invoice_total - payment_total - credit_total) <= 0 THEN 'Paid in Full'
        ELSE 'Balance Due'
    END AS InvoiceStatus
FROM ap.invoices;
-- Q12
SELECT 
UPPER(vendor_name) AS VendorName,
IFNULL(vendor_phone, 'No Phone Provided') AS VendorPhone
FROM ap.vendors;
-- Q13
SELECT DATEDIFF('2025-07-01', CURRENT_DATE) AS DaysToCanadaDay;
SELECT DATE_ADD(CURRENT_DATE, INTERVAL 10 DAY) AS NewDate;
SELECT DATE_SUB(CURRENT_DATE, INTERVAL 10 DAY) AS NewDate;
SELECT 
    CURRENT_DATE AS DefaultDate,
    DATE_FORMAT(CURRENT_DATE, '%Y-%m-%d') AS Format1,     
    DATE_FORMAT(CURRENT_DATE, '%d-%m-%Y') AS Format2,
    DATE_FORMAT(CURRENT_DATE, '%M %d, %Y') AS Format3,
    DATE_FORMAT(CURRENT_DATE, '%b %d, %Y') AS Format4,
    DATE_FORMAT(CURRENT_DATE, '%a, %d %b %Y') AS Format5;