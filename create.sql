CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;
DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT NOT NULL,
name VARCHAR(255) NOT NULL,
phone_number VARCHAR(15),
email VARCHAR(255),
address VARCHAR(255),
city VARCHAR(100),
province VARCHAR(100),
country VARCHAR(100),
postal_code VARCHAR(20)
) AUTO_INCREMENT=0;
DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
id INT AUTO_INCREMENT PRIMARY KEY,
VIN VARCHAR(17) NOT NULL,
manufacturer VARCHAR(100),
model VARCHAR(100),
year INT,
color VARCHAR(50)
);
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
id INT AUTO_INCREMENT PRIMARY KEY,
sales_id INT NOT NULL,
name VARCHAR(100),
store VARCHAR(100)
);
DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
id INT AUTO_INCREMENT PRIMARY KEY,
invoice_number INT NOT NULL,
date DATE,
customer_id INT,
car_id INT,
sales_id INT,
FOREIGN KEY (car_id) REFERENCES cars(car_id),
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (sales_id) REFERENCES sales(sales_id)
);
