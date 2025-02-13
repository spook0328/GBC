-- Q1
Select invoice_number, invoice_date, payment_total
from ap.invoices
where payment_total > 1000
order by payment_total ASC;
-- Q2
Select color_id, color_name
from ex.color_sample
Where color_name IS NOT NULL
order by color_name ASC;
-- Q3
Select title, artist, unit_price,
Round(0.4*unit_price,2)As discounted_price,
Round(unit_price-(0.4*unit_price),2)As total_due
from om.items
order by artist ASC;