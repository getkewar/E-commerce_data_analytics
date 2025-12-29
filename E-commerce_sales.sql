CREATE DATABASE EcommerceDB;

CREATE TABLE ecommerce_sales (
    order_id VARCHAR(50),
    order_date DATE,
    customer_id VARCHAR(50),
    customer_name VARCHAR(100),
    state VARCHAR(50),
    city VARCHAR(50),
    product_category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    unit_price FLOAT,
    discount FLOAT,
    payment_method VARCHAR(50),
    profit FLOAT
);
