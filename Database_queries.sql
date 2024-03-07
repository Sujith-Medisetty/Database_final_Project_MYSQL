use ecommercedb;

-- 1. How many vendors do you have registered?

select count(vendor_email) as num_of_vendors_registered from vendor;

-- 2. Number of active vs inactive vendors are there with the company (this month)?

SELECT
    SUM(
        CASE
            WHEN Status = 1 THEN 1
            ELSE 0
        END
    ) AS Active_Vendors,
    SUM(
        CASE
            WHEN Status = 0 THEN 1
            ELSE 0
        END
    ) AS Inactive_Vendors
FROM Vendor
WHERE
    MONTH(register_timestamp) = MONTH(CURRENT_DATE())
    AND YEAR(register_timestamp) = YEAR(CURRENT_DATE());
-- 3. How many customers have registered with your platfrom from the beginning?
SELECT COUNT(*) AS total_customers_registered
FROM Customer
where
    DATE(customer.register_timestamp) = '2021-01-01';

-- 4. Who is the vendor with most number listings?

SELECT
    v.vendor_email as vendor_email,
    CONCAT(
        v.First_Name, ' ', v.Last_Name
    ) AS vendor_name,
    COUNT(ii.item_id) AS num_listings
FROM Vendor v
    JOIN Inventory_Item ii ON v.vendor_email = ii.vendor_email
GROUP BY
    v.vendor_email
HAVING
    num_listings = (
        select max(num_listings)
        from (
                select v.vendor_email, count(ii.item_id) as num_listings
                from Vendor v
                    JOIN Inventory_Item ii ON v.vendor_email = ii.vendor_email
                group by
                    1
            ) as subquery
    )
ORDER BY num_listings DESC;
    -- 5. who is the customer with most number of order?
SELECT
    o.cust_email as customer_email,
    CONCAT(
        c.`First_name`, ' ', c.`Last_name`
    ) as customer_name,
    COUNT(*) AS num_orders
FROM `Order` o
    join customer c on o.cust_email = c.cust_email
GROUP BY
    1,
    2
HAVING
    num_orders = (
        select max(num_orders)
        from (
                select c.cust_email, count(*) as num_orders
                from `Order` o
                    join customer c on o.cust_email = c.cust_email
                group by
                    1
            ) as subquery
    )
ORDER BY 3 DESC;
-- 6. Top 5 vendors by revenue by month- January, Feb, Mar?

-- Top 5 vendors by revenue by Jan
select CONCAT(
        v.`First_Name`, ' ', v.`Last_Name`
    ) AS Vendor_Name, v.vendor_email, monthname(o.Order_Placed_timestamp) AS Month, sum(i.price * od.item_qty) AS Revenue
from
    vendor v
    join inventory_item ii on v.vendor_email = ii.vendor_email
    join item i on i.item_id = ii.item_id
    join order_details od on i.item_id = od.item_id
    join `order` o on o.order_id = od.order_id
where
    month(o.Order_Placed_timestamp) = 1
group by
    1,
    2,
    3
order by 4 desc
limit 5;

-- Top 5 vendors by revenue by Feb
select CONCAT(
        v.`First_Name`, ' ', v.`Last_Name`
    ) AS Vendor_Name, v.vendor_email, monthname(o.Order_Placed_timestamp) AS Month, sum(i.price * od.item_qty) AS Revenue
from
    vendor v
    join inventory_item ii on v.vendor_email = ii.vendor_email
    join item i on i.item_id = ii.item_id
    join order_details od on i.item_id = od.item_id
    join `order` o on o.order_id = od.order_id
where
    month(o.Order_Placed_timestamp) = 2
group by
    1,
    2,
    3
order by 4 desc
limit 5;

-- Top 5 vendors by revenue by Mar
select CONCAT(
        v.`First_Name`, ' ', v.`Last_Name`
    ) AS Vendor_Name, v.vendor_email, monthname(o.Order_Placed_timestamp) AS Month, sum(i.price * od.item_qty) AS Revenue
from
    vendor v
    join inventory_item ii on v.vendor_email = ii.vendor_email
    join item i on i.item_id = ii.item_id
    join order_details od on i.item_id = od.item_id
    join `order` o on o.order_id = od.order_id
where
    month(o.Order_Placed_timestamp) = 3
group by
    1,
    2,
    3
order by 4 desc
limit 5;

-- 7. Top5 customers by revenue this year?

select
    CONCAT(
        c.`First_name`, ' ', c.`Last_name`
    ) as Customer_Name,
    c.cust_email,
    Concat(
        year(o.Order_Placed_timestamp), ''
    ) as year,
    sum(i.price * od.item_qty) as Revenue
from
    customer c
    join `order` o on c.cust_email = o.cust_email
    join order_details od on od.order_id = o.order_id
    join item i on i.item_id = od.item_id
where
    date_format(
        o.Order_Placed_timestamp, '%y'
    ) = date_format(now(), '%y')
group by
    1,
    2,
    3
order by 4 desc
limit 5;

-- 8. Has our revenue increased last month compared to last year same month?

select (
        case
            when yearmonth = 2402 then 'Increased'
            else 'Not Increased'
        end
    ) as metrics
from (
        select date_format(
                o.Order_Placed_timestamp, '%y%m'
            ) as yearmonth, sum(i.price * od.item_qty) as revenue
        from
            item i
            join order_details od on i.item_id = od.item_id
            join `order` o on o.order_id = od.order_id
        where
            date_format(
                o.Order_Placed_timestamp, '%y%m'
            ) in (
                date_format(
                    date_sub(now(), interval 1 month), '%y%m'
                ), date_format(
                    date_sub(
                        date_sub(now(), interval 1 year), interval 1 month
                    ), '%y%m'
                )
            )
        group by
            1
        order by 1 desc
        limit 1
    ) as top_revenue;

-- Customer questions

-- 9. what is most expensive order among my orders?
select CONCAT(
        c.`First_name`, ' ', c.`Last_name`
    ) as Customer_Name, o.cust_email, o.order_id, sum(i.price * od.item_qty) as expense
from
    `order` o
    join order_details od on o.order_id = od.order_id
    join item i on i.item_id = od.item_id
    join customer c on c.cust_email = o.cust_email
where
    o.cust_email = 'rahul.sharma@gmail.com'
group by
    1,
    2,
    3
order by 4 desc
limit 1;

-- 10. how many orders did I place with your business?

select count(*) as no_of_orders_placed
from `order` o
where
    o.cust_email = 'rahul.sharma@gmail.com';

-- 11. Total historical spend with the business year to date?
select CONCAT(
        c.`First_name`, ' ', c.`Last_name`
    ) as Customer_Name, o.cust_email, sum(i.price * od.item_qty)
from
    `order` o
    join order_details od on o.order_id = od.order_id
    join item i on i.item_id = od.item_id
    join customer c on c.cust_email = o.cust_email
where
    date_format(
        o.Order_Placed_timestamp, '%Y'
    ) = date_format(now(), '%Y')
group by
    1,
    2
order by 2;
-- optional add email if you want to filter w.r.t customer

-- 12. Present the customer with a trend chart of their expenditure, You can use excel for this question, if needed. Use data from your database.

select
    concat(
        c.First_name, ' ', c.Last_name
    ) as customer_name,
    date_format(
        o.Order_Placed_timestamp, '%Y%M'
    ) as month,
    sum(od.item_qty * i.price) as expenditure
from
    `order` o
    join order_details od on o.order_id = od.order_id
    join item i on i.item_id = od.item_id
    join customer c on c.cust_email = o.cust_email
group by
    1,
    2
order by 1, 2;

-- 13. what is the size of my database?

SELECT table_schema AS "Database", concat(
        SUM(data_length + index_length) / 1024 / 1024, ' MB'
    ) AS Size
FROM information_schema.TABLES
where
    table_schema = 'ecommercedb'
GROUP BY
    table_schema;


-- 14. In any of above queries can you change your database design an reduce the cost of the query?

-- ANS: Created a view named 'OrderDetailsView' to simplify queries and improve query performance by eliminating the need to join the same tables multiple times for similar types of queries. please refer the file "Database query results_with_view.sql"