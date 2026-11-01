-- : This query calculates the total revenue, product sales, and shipping costs for all successfully delivered orders.

SELECT 
    COUNT(DISTINCT o.order_id) AS total_delivered_orders,
    ROUND(CAST(SUM(i.price + i.freight_value) AS NUMERIC), 2) AS total_revenue,
    ROUND(CAST(SUM(i.price) AS NUMERIC), 2) AS product_sales_only,
    ROUND(CAST(SUM(i.freight_value) AS NUMERIC), 2) AS total_freight_charges
FROM 
    olist_orders_dataset o
JOIN 
    olist_order_items_dataset i ON o.order_id = i.order_id
WHERE 
    o.order_status = 'delivered';


-- This query identifies the top 5 product categories that generate the highest revenue from customer purchases
	
SELECT 
    p.product_category_name,
    COUNT(i.order_id) AS total_items_sold,
    ROUND(CAST(SUM(i.price) AS NUMERIC), 2) AS category_total_revenue
FROM 
    olist_order_items_dataset i
JOIN 
    olist_products_dataset p ON i.product_id = p.product_id
GROUP BY 
    p.product_category_name
ORDER BY 
    category_total_revenue DESC
LIMIT 5;

-- This query analyzes customer payment behavior to determine which payment methods are most frequently used.

SELECT 
    payment_type,
    COUNT(DISTINCT order_id) AS total_transactions,
    ROUND(CAST(SUM(payment_value) AS NUMERIC), 2) AS total_payment_collected
FROM 
    olist_order_payments_dataset
GROUP BY 
    payment_type
ORDER BY 
    total_payment_collected DESC;

-- This query compares purchase dates, estimated delivery dates, and actual delivery dates to track delivery performance (On Time vs. Delayed).

SELECT 
    order_id,
    order_purchase_timestamp,
    order_estimated_delivery_date,
    order_delivered_customer_date,
    CASE 
        WHEN order_delivered_customer_date > order_estimated_delivery_date THEN 'Delayed'
        ELSE 'On Time'
    END AS delivery_performance_status
FROM 
    olist_orders_dataset
WHERE 
    order_status = 'delivered'
    AND order_delivered_customer_date IS NOT NULL
LIMIT 10;
