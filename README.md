# 🍝 Restaurant Operations Analysis (SQL)

## 📌 Project Overview
**Client:** Taste of the World Café  
**Role:** Data Analyst  
**Tool:** MySQL  

This project involves a comprehensive **Operational Analysis** of a restaurant's transaction data to identify menu performance, customer spending patterns, and opportunities for revenue optimization. 

The goal was to move beyond simple reporting and provide data-driven recommendations for **Menu Engineering** (identifying high-margin vs. low-velocity items) and **Revenue Assurance** (cleaning data anomalies).

## 📂 Repository Structure
The analysis is broken down into four SQL scripts:

| File Name | Description |
| :--- | :--- |
| **`create_restaurant_db.sql`** | Database schema setup, table creation (`menu_items`, `order_details`), and data insertion. |
| **`ob1.sql`** | **Objective 1: Menu Exploration.** Analyzing price points, category distribution (Italian, Asian, American), and identifying the most/least expensive inventory. |
| **`obj2.sql`** | **Objective 2: Order Volume Analysis.** Investigating date ranges, order counts, and filtering out "Ghost Records" (NULLs). |
| **`obj3.sql`** | **Objective 3: Customer Behavior.** Joining tables to calculate total spend per order, identifying the Top 5 customers, and analyzing category preferences. |

## 🔍 Key Business Insights & Findings

### 1. Revenue Assurance (Data Cleaning)
* **The Problem:** Initial counts of the `order_details` table showed discrepancies between total rows and valid item IDs.
* **The Fix:** identified **137 "Ghost Records"** (NULL `item_id`s), likely representing cancelled orders or system returns.
* **Impact:** Filtered these records out to ensure 100% reporting accuracy on sales volume.

### 2. Customer Segmentation (Top Spenders)
By aggregating `price` grouped by `order_id`, I identified the VIP transactions.
* **Insight:** The top 5 highest-spending orders significantly favored **Italian Cuisine**.
* **Recommendation:** Focus marketing efforts for premium Italian dishes towards high-value dinner segments.

### 3. Menu Engineering
* Analyzed order volume against menu categories.
* Identified that while certain categories have high inventory counts, their order velocity varies, suggesting opportunities to streamline the menu and reduce food waste.

## 🛠️ Technical Skills Demonstrated
* **Data Cleaning:** Handling `NULL` values and ensuring data integrity (`IS NOT NULL`).
* **Aggregations:** Using `COUNT`, `SUM`, `MIN`, `MAX`, and `AVG` to derive metrics.
* **Complex Filtering:** Using `HAVING` clauses to filter grouped data (e.g., finding orders with >12 items).
* **Joins:** `LEFT JOIN` to combine transactional data (`order_details`) with dimension tables (`menu_items`).
* **Subqueries:** Nested queries to isolate specific subsets of data.

## 🚀 How to Run
1.  Download `create_restaurant_db.sql` and run it in your SQL Environment (MySQL Workbench, etc.) to build the database.
2.  Run the subsequent analysis scripts (`ob1.sql`, `obj2.sql`, `obj3.sql`) to generate the insights.

---
*Connect with me on [LinkedIn]www.linkedin.com/in/codebean1474 for more data analytics projects.*
