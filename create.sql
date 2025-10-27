CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql;

DROP TABLE IF EXISTS invoices;
CREATE TABLE invoices (
    invoice_number VARCHAR(50) PRIMARY KEY,
    date DATE,
    car_vin VARCHAR(50),
    customer_id INT,
    staff_id INT,
    FOREIGN KEY (car_vin) REFERENCES cars(vin),
    FOREIGN KEY (customer_id) REFERENCES customers(cust_id),
    FOREIGN KEY (staff_id) REFERENCES salespersons(staff_id)
);

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    vin VARCHAR(50) PRIMARY KEY,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    color VARCHAR(30)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    cust_id INT PRIMARY KEY,
    cust_name VARCHAR(100),
    cust_phone VARCHAR(30),
    cust_email VARCHAR(100),
    cust_address VARCHAR(100),
    cust_city VARCHAR(50),
    cust_state VARCHAR(50),
    cust_country VARCHAR(50),
    cust_zipcode VARCHAR(20)
);

DROP TABLE IF EXISTS salespersons;
CREATE TABLE salespersons (
    staff_id INT PRIMARY KEY,
    name VARCHAR(100),
    store VARCHAR(50)
);









