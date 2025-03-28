use ex;
-- Q1
CREATE VIEW vndr_view AS
SELECT vendor_name, vendor_state, vendor_phone
FROM ap.vendors
ORDER BY vendor_name;

-- Q2
SELECT * FROM vndr_view3;

-- 3a: 建立視圖 vndr_view2，篩選 vendor_state = 'CA' 的資料
CREATE VIEW ex.vndr_view2 AS 
SELECT * FROM ex.vndr_view
WHERE vendor_state = 'CA';

-- 3b: 建立視圖 vndr_view3，篩選 vendor_phone 為 NULL 的資料
CREATE VIEW ex.vndr_view3 AS
SELECT vendor_id, vendor_name, vendor_state, vendor_phone
FROM ap.vendors  -- 修正 ap. vendors → ap.vendors (移除空格)
WHERE vendor_phone IS NULL;

-- 4: 更新 ex.vndr_view 中的 vendor_phone
UPDATE ex.vndr_view
SET vendor_phone = '416-415-5000'
WHERE vendor_name LIKE 'ASC Signs';

-- 查詢是否成功更新
SELECT * FROM ap.vendors 
WHERE vendor_name LIKE 'ASC Signs'; 

-- 5: 重新建立 vndr_view3，確保數據更新時仍符合條件 (vendor_phone 為 NULL)
CREATE OR REPLACE VIEW ex.vndr_view3 AS
SELECT vendor_id, vendor_name, vendor_state, vendor_phone
FROM ap.vendors
WHERE vendor_phone IS NULL
WITH CHECK OPTION;

-- 6: 查詢 vendor_name 為 'Ingram' 的資料
SELECT * FROM ex.vndr_view3  -- 修正 ex,vndr_view3 → ex.vndr_view3
WHERE vendor_name = 'Wong';

-- 6: 更新 vndr_view3，修正語法錯誤
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