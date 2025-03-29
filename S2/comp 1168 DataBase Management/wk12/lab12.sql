use ex;
-- Q1
CREATE VIEW vndr_view AS
SELECT vendor_name, vendor_state, vendor_phone
FROM ap.vendors
ORDER BY vendor_name;

-- Q2
SELECT * FROM vndr_view;

-- 3a
CREATE VIEW ex.vndr_view2 AS 
SELECT * FROM ex.vndr_view
WHERE vendor_state = 'CA';

-- 3b
CREATE VIEW ex.vndr_view3 AS
SELECT vendor_id, vendor_name, vendor_state, vendor_phone
FROM ap.vendors  
WHERE vendor_phone IS NULL;

-- 4
UPDATE ex.vndr_view
SET vendor_phone = '416-415-5000'
WHERE vendor_name LIKE 'ASC Signs';

SELECT * FROM ap.vendors 
WHERE vendor_name LIKE 'ASC Signs'; 

-- 5
CREATE OR REPLACE VIEW ex.vndr_view3 AS
SELECT vendor_id, vendor_name, vendor_state, vendor_phone
FROM ap.vendors
WHERE vendor_phone IS NULL
WITH CHECK OPTION;

-- 6
SELECT * FROM ex.vndr_view3  
WHERE vendor_name = 'Wong';

-- 6
UPDATE ex.vndr_view3
SET vendor_phone = '416-415-5000'
WHERE vendor_name = 'Wong';

-- 7
create view ex.outstanding_invoices_summary AS
select vendor_name, count(*), sum(invoice_total - payment_total - credit_total)
from ap.vendors v
inner join ap.invoices i
on v.vendor_id = i.vendor_id
group by vendor_name
having (invoice_total - payment_total - credit_total) >0;

select * from ex.outstanding_invoices_summary;