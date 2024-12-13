CREATE TABLE users (
  user_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  password TEXT NOT NULL
);

-- Insert statements
INSERT INTO users VALUES (1, 'Nitish', 'nitish@gmail.com', 'p252h');
INSERT INTO users VALUES (2, 'Khushboo', 'khushboo@gmail.com', 'hxn9b');
INSERT INTO users VALUES (3, 'Vartika', 'vartika@gmail.com', '9hu7j');
INSERT INTO users VALUES (4, 'Ankit', 'ankit@gmail.com', 'lkko3');
INSERT INTO users VALUES (5, 'Neha', 'neha@gmail.com', '3i7qm');
INSERT INTO users VALUES (6, 'Anupama', 'anupama@gmail.com', '46rdw2');
INSERT INTO users VALUES (7, 'Rishabh', 'rishabh@gmail.com', '4sw123');

select * from users;

CREATE TABLE restaurant(
  r_id INTEGER PRIMARY KEY,
  r_name TEXT NOT NULL,
  cuisine TEXT NOT NULL
);

INSERT INTO restaurant VALUES (1, 'dominos', 'Italian');
INSERT INTO restaurant VALUES (2, 'kfc', 'American');
INSERT INTO restaurant VALUES (3, 'box8', 'North Indian');
INSERT INTO restaurant VALUES (4, 'Dosa Plaza', 'South Indian');
INSERT INTO restaurant VALUES (5, 'China Town', 'Chinese');

-- select * from restaurant;

CREATE TABLE food (
  f_id INTEGER PRIMARY KEY,
  f_name TEXT NOT NULL,
  type TEXT NOT NULL
);

INSERT INTO food VALUES (1, 'Non-veg Pizza', 'Non-veg');
INSERT INTO food VALUES (2, 'Veg Pizza', 'Veg');
INSERT INTO food VALUES (3, 'Choco Lava Cake', 'Veg');
INSERT INTO food VALUES (4, 'Chicken Wings', 'Non-veg');
INSERT INTO food VALUES (5, 'Chicken Popcorn', 'Non-veg');
INSERT INTO food VALUES (6, 'Rice Meal', 'Veg');
INSERT INTO food VALUES (7, 'Roti Meal', 'Veg');
INSERT INTO food VALUES (8, 'Masala Dosa', 'Veg');
INSERT INTO food VALUES (9, 'Rava Idli', 'Veg');
INSERT INTO food VALUES (10, 'Schezwan Noodles', 'Veg');
INSERT INTO food VALUES (11, 'Veg Manchurian', 'Veg');

-- select * from food;

-- Create the menu table
CREATE TABLE menu (
  menu_id INTEGER PRIMARY KEY,
  r_id INTEGER NOT NULL,
  f_id INTEGER NOT NULL,
  price DECIMAL(10, 2) NOT NULL
);

-- Insert values into the menu table
INSERT INTO menu VALUES (1, 1, 1, 450.00);
INSERT INTO menu VALUES (2, 1, 2, 400.00);
INSERT INTO menu VALUES (3, 1, 3, 100.00);
INSERT INTO menu VALUES (4, 2, 3, 115.00);
INSERT INTO menu VALUES (5, 2, 4, 230.00);
INSERT INTO menu VALUES (6, 2, 5, 300.00);
INSERT INTO menu VALUES (7, 3, 3, 80.00);
INSERT INTO menu VALUES (8, 3, 6, 160.00);
INSERT INTO menu VALUES (9, 3, 7, 140.00);
INSERT INTO menu VALUES (10, 4, 6, 230.00);
INSERT INTO menu VALUES (11, 4, 8, 180.00);
INSERT INTO menu VALUES (12, 4, 9, 120.00);
INSERT INTO menu VALUES (13, 5, 6, 250.00);
INSERT INTO menu VALUES (14, 5, 10, 220.00);
INSERT INTO menu VALUES (15, 5, 11, 180.00);

select * from menu;

-- Create the orders table
CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  user_id INTEGER NOT NULL,
  r_id INTEGER NOT NULL,
  amount DECIMAL(10, 2) NOT NULL,
  date DATE NOT NULL,
  partner_id INTEGER NOT NULL,
  delivery_time INTEGER NOT NULL,
  delivery_rating INTEGER,
  restaurant_rating INTEGER
);

-- Insert values into the orders table
INSERT INTO orders VALUES (1001, 1, 1, 550.00, '2022-05-10', 1, 25, 5, 3);
INSERT INTO orders VALUES (1002, 1, 2, 415.00, '2022-05-26', 1, 19, 5, 2);
INSERT INTO orders VALUES (1003, 1, 3, 240.00, '2022-06-15', 5, 29, 4, NULL);
INSERT INTO orders VALUES (1004, 1, 3, 240.00, '2022-06-29', 4, 42, 3, 5);
INSERT INTO orders VALUES (1005, 1, 3, 220.00, '2022-07-10', 1, 58, 1, 4);
INSERT INTO orders VALUES (1006, 2, 1, 950.00, '2022-06-10', 2, 16, 5, NULL);
INSERT INTO orders VALUES (1007, 2, 2, 530.00, '2022-06-23', 3, 60, 1, 5);
INSERT INTO orders VALUES (1008, 2, 3, 240.00, '2022-07-07', 5, 33, 4, 5);
INSERT INTO orders VALUES (1009, 2, 4, 300.00, '2022-07-17', 4, 41, 1, NULL);
INSERT INTO orders VALUES (1010, 2, 5, 650.00, '2022-07-31', 1, 67, 1, 4);
INSERT INTO orders VALUES (1011, 3, 1, 450.00, '2022-05-10', 2, 25, 3, 1);
INSERT INTO orders VALUES (1012, 3, 4, 180.00, '2022-05-20', 5, 33, 4, 1);
INSERT INTO orders VALUES (1013, 3, 2, 230.00, '2022-05-30', 4, 45, 3, NULL);
INSERT INTO orders VALUES (1014, 3, 2, 230.00, '2022-06-11', 2, 55, 1, 2);
INSERT INTO orders VALUES (1015, 3, 2, 230.00, '2022-06-22', 3, 21, 5, NULL);
INSERT INTO orders VALUES (1016, 4, 4, 300.00, '2022-05-15', 3, 31, 5, 5);
INSERT INTO orders VALUES (1017, 4, 4, 300.00, '2022-05-30', 1, 50, 1, NULL);
INSERT INTO orders VALUES (1018, 4, 4, 400.00, '2022-06-15', 2, 40, 3, 5);
INSERT INTO orders VALUES (1019, 4, 5, 400.00, '2022-06-30', 1, 70, 2, 4);
INSERT INTO orders VALUES (1020, 4, 5, 400.00, '2022-07-15', 3, 26, 5, 3);
INSERT INTO orders VALUES (1021, 5, 1, 550.00, '2022-07-01', 5, 22, 2, NULL);
INSERT INTO orders VALUES (1022, 5, 1, 550.00, '2022-07-08', 1, 34, 5, 1);
INSERT INTO orders VALUES (1023, 5, 2, 645.00, '2022-07-15', 4, 38, 5, 1);
INSERT INTO orders VALUES (1024, 5, 2, 645.00, '2022-07-21', 2, 58, 2, 1);
INSERT INTO orders VALUES (1025, 5, 2, 645.00, '2022-07-28', 2, 44, 4, NULL);

select * from orders;

-- Create the delivery_partner table
CREATE TABLE delivery_partner (
  partner_id INTEGER PRIMARY KEY,
  partner_name TEXT NOT NULL
);

-- Insert values into the delivery_partner table
INSERT INTO delivery_partner VALUES (1, 'Suresh');
INSERT INTO delivery_partner VALUES (2, 'Amit');
INSERT INTO delivery_partner VALUES (3, 'Lokesh');
INSERT INTO delivery_partner VALUES (4, 'Kartik');
INSERT INTO delivery_partner VALUES (5, 'Gyandeep');

-- select * from delivery_partner;

-- Create the order_details table
CREATE TABLE order_details (
  id INTEGER PRIMARY KEY,
  order_id INTEGER NOT NULL,
  f_id INTEGER NOT NULL
);

-- Insert values into the order_details table
INSERT INTO order_details VALUES (1, 1001, 1);
INSERT INTO order_details VALUES (2, 1001, 3);
INSERT INTO order_details VALUES (3, 1002, 4);
INSERT INTO order_details VALUES (4, 1002, 3);
INSERT INTO order_details VALUES (5, 1003, 6);
INSERT INTO order_details VALUES (6, 1003, 3);
INSERT INTO order_details VALUES (7, 1004, 6);
INSERT INTO order_details VALUES (8, 1004, 3);
INSERT INTO order_details VALUES (9, 1005, 7);
INSERT INTO order_details VALUES (10, 1005, 3);
INSERT INTO order_details VALUES (11, 1006, 1);
INSERT INTO order_details VALUES (12, 1006, 2);
INSERT INTO order_details VALUES (13, 1006, 3);
INSERT INTO order_details VALUES (14, 1007, 4);
INSERT INTO order_details VALUES (15, 1007, 3);
INSERT INTO order_details VALUES (16, 1008, 6);
INSERT INTO order_details VALUES (17, 1008, 3);
INSERT INTO order_details VALUES (18, 1009, 8);
INSERT INTO order_details VALUES (19, 1009, 9);
INSERT INTO order_details VALUES (20, 1010, 10);
INSERT INTO order_details VALUES (21, 1010, 11);
INSERT INTO order_details VALUES (22, 1010, 6);
INSERT INTO order_details VALUES (23, 1011, 1);
INSERT INTO order_details VALUES (24, 1012, 8);
INSERT INTO order_details VALUES (25, 1013, 4);
INSERT INTO order_details VALUES (26, 1014, 4);
INSERT INTO order_details VALUES (27, 1015, 4);
INSERT INTO order_details VALUES (28, 1016, 8);
INSERT INTO order_details VALUES (29, 1016, 9);
INSERT INTO order_details VALUES (30, 1017, 8);
INSERT INTO order_details VALUES (31, 1017, 9);
INSERT INTO order_details VALUES (32, 1018, 10);
INSERT INTO order_details VALUES (33, 1018, 11);
INSERT INTO order_details VALUES (34, 1019, 10);
INSERT INTO order_details VALUES (35, 1019, 11);
INSERT INTO order_details VALUES (36, 1020, 10);
INSERT INTO order_details VALUES (37, 1020, 11);
INSERT INTO order_details VALUES (38, 1021, 1);
INSERT INTO order_details VALUES (39, 1021, 3);
INSERT INTO order_details VALUES (40, 1022, 1);
INSERT INTO order_details VALUES (41, 1022, 3);
INSERT INTO order_details VALUES (42, 1023, 3);
INSERT INTO order_details VALUES (43, 1023, 4);
INSERT INTO order_details VALUES (44, 1023, 5);
INSERT INTO order_details VALUES (45, 1024, 3);
INSERT INTO order_details VALUES (46, 1024, 4);
INSERT INTO order_details VALUES (47, 1024, 5);
INSERT INTO order_details VALUES (48, 1025, 3);
INSERT INTO order_details VALUES (49, 1025, 4);
INSERT INTO order_details VALUES (50, 1025, 5);

-- select * from order_details;



-- 1) Find customers who have never ordered
SELECT name 
FROM users
WHERE user_id NOT IN (SELECT DISTINCT user_id FROM orders);

-- 2)average price per dish
select f.f_name, avg(price) as 'Avg Price'
from menu m 
join food f 
on m.f_id=f.f_id
group by 
m.f_id;

-- 3) find top restaurant in terms of number of orders for a given month
select r_id,count(*) 
from orders where monthname(date)
like 'June' group by r_id order by 
count(*) desc limit 1;

-- 4)restaurant with monthy sales > x for
select r.r_name , sum(amount) as 'revenue'
from orders o
join restaurant r
on o.r_id=r.r_id
where monthname(date) like 'JUNE'
group by o.r_id
having revenue > 500;

-- 5)show all orders with order details for a particular customer in a particular date
SELECT o.order_id, r.r_name, f.f_name 
FROM orders o
JOIN restaurant r 
  ON r.r_id = o.r_id
JOIN order_details od 
  ON o.order_id = od.order_id
JOIN food f 
  ON f.f_id = od.f_id
WHERE user_id = (
  SELECT user_id 
  FROM users 
  WHERE name LIKE 'Nitish'
) 
AND (date > '2022-06-10' AND date < '2022-07-10');

-- 6)find restaurant with max repeated cutomers
SELECT r.r_name, COUNT(*) AS loyal_customers
FROM (
  SELECT r_id, user_id, COUNT(*) AS visits
  FROM orders
  GROUP BY r_id, user_id
  HAVING visits > 1
) t
JOIN restaurant r 
  ON r.r_id = t.r_id
GROUP BY t.r_id
ORDER BY loyal_customers DESC 
LIMIT 1;



-- 7)Month over month revenue growth with swigg
WITH sales AS (
  SELECT 
    MONTHNAME(date) AS month, 
    SUM(amount) AS revenue 
  FROM orders 
  GROUP BY MONTH(date), MONTHNAME(date) 
  ORDER BY MONTH(date)
),
lagged_sales AS (
  SELECT 
    month, 
    revenue, 
    LAG(revenue, 1) OVER (ORDER BY MONTHNAME(month)) AS prev
  FROM sales
)
SELECT 
  month, 
  ((revenue - prev) / prev) * 100 AS growth_rate
FROM lagged_sales
WHERE prev IS NOT NULL;

-- 8)Customer favorite food
with temp as (
  select 
    o.user_id, 
    od.f_id, 
    count(*) as frequency
  from 
    orders o
  join 
    order_details od 
    on o.order_id = od.order_id
  group by 
    o.user_id, od.f_id
)
select 
  u.name as user_name, 
  f.f_name as food_name, 
  t1.frequency
from 
  temp t1
join 
  users u 
  on u.user_id = t1.user_id
join 
  food f 
  on f.f_id = t1.f_id
where 
  t1.frequency = (
    select 
      max(t2.frequency)
    from 
      temp t2
    where 
      t2.user_id = t1.user_id
  );

-- 1. Find the Most Loyal Customers for All Restaurants
-- Most loyal customers can be identified as those who have placed the highest number of orders at each restaurant.

WITH customer_orders AS (
  SELECT 
    o.user_id, 
    o.r_id, 
    COUNT(*) AS total_orders
  FROM 
    orders o
  GROUP BY 
    o.user_id, o.r_id
),
most_loyal AS (
  SELECT 
    r_id, 
    MAX(total_orders) AS max_orders
  FROM 
    customer_orders
  GROUP BY 
    r_id
)
SELECT 
  r.r_name AS restaurant_name, 
  u.name AS customer_name, 
  co.total_orders
FROM 
  customer_orders co
JOIN 
  most_loyal ml 
  ON co.r_id = ml.r_id AND co.total_orders = ml.max_orders
JOIN 
  users u 
  ON co.user_id = u.user_id
JOIN 
  restaurant r 
  ON co.r_id = r.r_id;

-- 2. Month-over-Month Revenue Growth of a Restaurant
-- This requires calculating monthly revenue and then determining the percentage growth from the previous month.

WITH monthly_revenue AS (
  SELECT 
    r_id, 
    DATE_FORMAT(date, '%Y-%m') AS month, 
    SUM(amount) AS total_revenue
  FROM 
    orders
  GROUP BY 
    r_id, DATE_FORMAT(date, '%Y-%m')
),
revenue_growth AS (
  SELECT 
    r_id, 
    month, 
    total_revenue, 
    LAG(total_revenue) OVER (PARTITION BY r_id ORDER BY month) AS prev_revenue
  FROM 
    monthly_revenue
)
SELECT 
  r.r_name AS restaurant_name, 
  rg.month, 
  rg.total_revenue, 
  rg.prev_revenue,
  ROUND(((rg.total_revenue - rg.prev_revenue) / rg.prev_revenue) * 100, 2) AS revenue_growth_percentage
FROM 
  revenue_growth rg
JOIN 
  restaurant r 
  ON rg.r_id = r.r_id
WHERE 
  rg.prev_revenue IS NOT NULL;

-- 3. Most Paired Product
-- The most paired product can be determined by counting the frequency of food items ordered together.
WITH paired_items AS (
  SELECT 
    od1.f_id AS product_1, 
    od2.f_id AS product_2, 
    COUNT(*) AS pair_count
  FROM 
    order_details od1
  JOIN 
    order_details od2 
    ON od1.order_id = od2.order_id AND od1.f_id < od2.f_id
  GROUP BY 
    od1.f_id, od2.f_id
)
SELECT 
  f1.f_name AS product_1, 
  f2.f_name AS product_2, 
  p.pair_count
FROM 
  paired_items p
JOIN 
  food f1 
  ON p.product_1 = f1.f_id
JOIN 
  food f2 
  ON p.product_2 = f2.f_id
ORDER BY 
  p.pair_count DESC
LIMIT 1;