-- Revenue per transaction 
SELECT transaction_id,
       transaction_qty*unit_price AS revenue
FROM sales.retail.bright_coffee;

-- For  ID's we use the COUNT NOT SUM 
-- This is the total number of sales/transactions made
SELECT COUNT(transaction_id) AS number_of_transactions
FROM sales.retail.bright_coffee;

--COUNT the number of different shops we have in this data 
SELECT COUNT(DISTINCT store_id) AS number_of_shops
FROM sales.retail.bright_coffee;

-- To show us the name of the different store location which is actually 3 different shops
SELECT DISTINCT store_location, store_id
FROM sales.retail.bright_coffee;

--How to calculate the revenue by store location 
SELECT store_location,
       SUM(transaction_qty*unit_price) AS revenue
FROM sales.retail.bright_coffee
GROUP BY store_location;

-- What time does the shop opens
SELECT MIN(transaction_time) openig_time
FROM sales.retail.bright_coffee;

-- What time does the shop close
SELECT MAX(transaction_time) closing_time
FROM sales.retail.bright_coffee;

--- to check all the coloums names in the data
--- to check the data types in the data

select * 
from sales.retail.bright_coffee
limit 10;

--- To check categorical coloms
select distinct store_location
from sales.retail.bright_coffee;

select distinct product_category
from sales.retail.bright_coffee;

-----
select MIN(transaction_date) AS first_operating_date
from sales.retail.bright_coffee

select MAX(transaction_date) AS last_operating_date
from sales.retail.bright_coffee

select MIN(transaction_time) AS opening_hour
from sales.retail.bright_coffee

select MAX(transaction_time) AS closing_hour
from sales.retail.bright_coffee

select transaction_date,
dayname(transaction_date) AS day_name,
case
when day_name IN ('SUN','SAT') THEN 'Weekend'
else 'weekday'
end as day_classification,
monthname(transaction_date) AS month_name,
--transaction_time,
case
when transaction_time between '06:00:00' and '11:59:59' then 'morning'
when transaction_time between '12:00:00' and '16:59:59' then 'afternoon'
when transaction_time >= '17:00:00' then 'Evining'
end as time_bucket,
hour(transaction_time) AS hour_of_day,

---categorical data
store_location,
product_category,
product_detail,
product_type,
-----IDs
count (distinct transaction_id) as number_of_sales,
---Revenue
sum(transaction_qty*unit_price) as revenue
from sales.retail.bright_coffee
Group by ALL;
