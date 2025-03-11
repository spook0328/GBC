-- Q1
-- a intrinsic style 固有
SELECT v.vendor_id, v.vendor_name, i.invoice_number, i.invoice_total
FROM ap.vendors v, ap.invoices i
WHERE i.vendor_id = v.vendor_id;

-- b extrinsin style 外源
SELECT v.vendor_id, v.vendor_name, i.invoice_number, i.invoice_total
FROM ap.vendors v
INNER JOIN ap.invoices i
ON i.vendor_id = v.vendor_id;

-- c using natual join 自動匹配，不需要ON
select * from ap.vendors v
Natural join ap.invoices i;

-- d using keywords
select v.vendor_id, v.vendor_name, i.invoice_number, i.invoice_total
from ap.vendors v join ap.invoices i USING(vendor_id);

-- Q2 Inner Join
select e.employee_id, concat(first_name,' ',last_name) As EmployeeName, department_name
From ex.employees e
Inner Join ex.departments d
	On e.department_number = d.department_number;

-- Q3
-- a Left Outer Join
select e.employee_id, concat(first_name,' ',last_name) As EmployeeName, department_name
From ex.employees e
left outer join ex.departments d
on e.department_number = d.department_number;
-- b right outer join
select e.employee_id, concat(first_name,' ',last_name) As EmployeeName, department_name
From ex.employees e
right outer join ex.departments d
on e.department_number = d.department_number;
-- c WHERE d.department_name IS NULL
select e.employee_id, concat(first_name,' ',last_name) As EmployeeName, department_name
From ex.employees e
left join ex.departments d
on e.department_number = d.department_number
where d.department_number is null;

-- d Union (Left + Right)
-- 取得有對應部門的員工
SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS EmployeeName, d.department_name
FROM ex.employees e
LEFT JOIN ex.departments d ON e.department_number = d.department_number

Union
-- 取得沒有員工的部門
SELECT NULL AS employee_id, NULL AS EmployeeName, d.department_name
FROM ex.departments d
WHERE NOT EXISTS (
    SELECT 1 FROM ex.employees e WHERE e.department_number = d.department_number
)
    
Union
-- 取得沒有部門的員工
SELECT e.employee_id, CONCAT(e.first_name, ' ', e.last_name) AS EmployeeName, NULL AS department_name
FROM ex.employees e
WHERE NOT EXISTS (
    SELECT 1 FROM ex.departments d WHERE e.department_number = d.department_number
);

-- Q4
select 
	v.vendor_zip_code AS ZipCode,
    concat(c.customer_first_name, ', ', c.customer_last_name) As CustomersName,
	v.vendor_name As VendorName
from ap.vendors v
inner join om.customers c
	on v.vendor_zip_code = c.customer_zip;
    
-- Q5
select
	concat(c.customer_first_name, ', ', c.customer_last_name) As CustomersName,
    o.order_id,
    i.title,
    o.order_date,
    od.order_qty,
    i.unit_price,
    (od.order_qty * i.unit_price) As Total
from om.customers c
Join om.orders o on c.customer_id = o.customer_id
Join om.order_details od on o.order_id = od.order_id
Join om.items i on od.item_id = i.item_id
Order by c.customer_first_name, c.customer_last_name, o.order_date;
