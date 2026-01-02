-- LeetCode 1068: For each sale, return product_name, year, and price by joining Sales with Product (one row per sale)
# Write your MySQL query statement below
select p.product_name , year , price
 from Sales as s
left join  product as p
on s.product_id = p.product_id;

-- LeetCode 1581: Customer Who Visited but Did Not Make Any Transactions
# Write your MySQL query statement below
select v.customer_id , count(*) as  count_no_trans
from visits as v
left join  Transactions as t
on v.visit_id = t.visit_id 
where t.visit_id is null
group by v.customer_id;
;

-- LeetCode 197: Rising Temperature (short)
-- Return the id of each day where temperature is higher than the previous day.
-- Example expected output: ids for dates where temperature > yesterday's temperature.

-- Solution (MySQL): join the table to itself on previous day and compare temperatures
SELECT w1.id
FROM Weather AS w1
JOIN Weather AS w2
  ON DATE_SUB(w1.recordDate, INTERVAL 1 DAY) = w2.recordDate
WHERE w1.temperature > w2.temperature;
