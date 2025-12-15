-- 1. Combine the menu_items Table and the order_details Table into a single Table
SELECT * FROM menu_items;
SELECT * FROM order_details;

SELECT category
FROM order_details AS od
LEFT JOIN menu_items AS mi
	ON od.item_id = mi.menu_item_id
GROUP BY category;

-- 2. What were the leat and most orders Items?, What Categories were they in ?
SELECT item_name,category, COUNT(order_details_id) AS num_purchases
FROM order_details AS od
LEFT JOIN menu_items AS mi
	ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases DESC;

-- 3. What were the top 5 orders that spent the most money ?

SELECT order_id, SUM(price) AS total_spent
FROM order_details AS od
LEFT JOIN menu_items AS mi
	ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spent DESC
LIMIT 5;

-- SELECT order_id, category, SUM(price) AS total_spent
-- FROM order_details AS od
-- LEFT JOIN menu_items AS mi
-- 	ON od.item_id = mi.menu_item_id
-- GROUP BY order_id, category
-- ORDER BY total_spent DESC;


-- 4. View thw details of the highest spend order, what insight can you gather from the results ?
SELECT category, COUNT(item_id) AS num_item 
FROM order_details AS od
LEFT JOIN menu_items AS mi
	ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category;

-- 5. View the details of the top 5 spend orders, what insight can you gather from the results ?
SELECT order_id,category, COUNT(item_id) AS num_item 
FROM order_details AS od
LEFT JOIN menu_items AS mi
	ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075,1957,330,2675)
GROUP BY order_id,category;


SELECT category, COUNT(item_id) AS num_item 
FROM order_details AS od
LEFT JOIN menu_items AS mi
	ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075,1957,330,2675)
GROUP BY category;
