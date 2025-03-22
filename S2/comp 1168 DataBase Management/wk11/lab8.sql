-- Q1
	-- use ap;
	-- show tables;
select 
	invoice_id, 
    payment_total
from ap.invoices
where payment_total > (select avg(payment_total) from ap.invoices);

-- Q2
	-- use ap;
    -- show tables;
    -- select * from ap.vendors;
select
	invoice_number,
    invoice_date,
    invoice_total
from ap.invoices
where vendor_id in(
	select vendor_id
    from ap.vendors
	where vendor_state = "CA"
)
order by invoice_date;

-- Q3
select
	v.vendor_id,
    v.vendor_name,
    v.vendor_state
from ap.vendors v
left join ap.invoices i
on v.vendor_id = i.vendor_id
where i.invoice_id IS Null;

-- Q4
select
	v.vendor_name,
    i.invoice_number,
    i.invoice_total
from ap.vendors v
join ap.invoices i
on v.vendor_id = i.vendor_id
where invoice_total > All(
	select invoice_total
	From ap.invoices
    where vendor_id =34)
order by vendor_name;

-- Q5 
select 
	vendor_id,
    vendor_name,
    vendor_state
from ap.vendors v
where not exists(
	select *
    from ap.invoices i
    where i.vendor_id = v.vendor_id);

-- Q6
	-- use ap;
	-- show tables;
	-- select * from invoices;
SELECT
    vendor_name,
    Latest_Inv_Date
FROM (
    SELECT
        vendor_name,
        (SELECT MAX(i.invoice_date)
         FROM ap.invoices i
         WHERE i.vendor_id = v.vendor_id) AS Latest_Inv_Date
    FROM ap.vendors v
) AS SubQuery
WHERE Latest_Inv_Date IS NOT NULL;