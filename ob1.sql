USE restaurant_db;

-- 1. View the menu Items Table?
SELECT * FROM restaurant_db.menu_items;

-- 2. Find the Number of Items on the menu?
SELECT COUNT(*) FROM restaurant_db.menu_items;

-- 3. What are the least and most expensive items on the menu?
SELECT * FROM restaurant_db.menu_items
ORDER BY price;

SELECT * FROM restaurant_db.menu_items
ORDER BY price DESC;

SELECT MAX(price) FROM menu_items;
SELECT MIN(price) FROM menu_items;

-- 4. How many Italian dishes are on the menu?
SELECT COUNT(*) FROM restaurant_db.menu_items
WHERE category = "Italian";

-- 5. What are the least and most expensive Italian dishes on the menu?
SELECT MIN(price) AS least_expensive, MAX(price) AS most_expensive
FROM restaurant_db.menu_items
WHERE category = 'Italian';

SELECT item_name, price
FROM restaurant_db.menu_items
WHERE category = 'Italian'
ORDER BY price ASC;


-- 6. How many dishes are in each category?
SELECT category, COUNT(item_name) AS num_dishes
FROM restaurant_db.menu_items
GROUP BY category;

SELECT category, COUNT(item_name) AS num_dishes
FROM restaurant_db.menu_items
GROUP BY category
ORDER BY num_dishes DESC;

-- 7. What is the average dish price in each category?

SELECT category, AVG(price) AS avg_price
FROM restaurant_db.menu_items
GROUP BY category;