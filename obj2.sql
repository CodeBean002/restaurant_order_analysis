-- 1. View the order_details Table

SELECT * FROM restaurant_db.order_details;

-- 2. What is the Date Range of the Table?
SELECT order_date FROM order_details;
-- ORDER BY order_date ASC;

SELECT MIN(order_date), MAX(order_date) FROM order_details;


-- 3. How many orders were made within this date range?
SELECT COUNT(DISTINCT order_id) AS order_num FROM order_details;

-- 4. How many items were ordered withinh this date range?
SELECT *
FROM order_details
WHERE item_id IS NULL; -- This is what i used to show the free/rejected/returned/cancelled orders

SELECT COUNT(*)
FROM order_details
WHERE item_id IS NULL; -- I used this to count the number of the free/rejected/returned/cancelled orders

SELECT COUNT(*)
FROM order_details
WHERE item_id IS NOT NULL; -- True items orderd

SELECT COUNT(item_id) 
FROM order_details; -- This is what i used to count the true items ordered

SELECT COUNT(*) 
FROM order_details; -- this includes the returned ones too

-- 5. Which orders has the most number of items?

SELECT order_id, COUNT(item_id) AS num_item
FROM order_details
GROUP BY order_id
ORDER BY num_item DESC;

-- 6. How many orders had more thsn 12 items?

SELECT COUNT(*) FROM 
(SELECT order_id, COUNT(item_id) AS num_item
FROM order_details
GROUP BY order_id
HAVING num_item > 12) AS num_order;
