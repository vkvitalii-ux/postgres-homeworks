-- SQL-команды для создания таблиц
CREATE TABLE employees(
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    title VARCHAR(100) NOT NULL,
    birth_date DATE NOT NULL,
    notes TEXT
);

CREATE TABLE customers(
    customer_id VARCHAR(10) PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    contact_name VARCHAR(100) NOT NULL
);

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customer_id VARCHAR(10) REFERENCES customers(customer_id) NOT NULL,
    employee_id INT REFERENCES employees(employee_id) NOT NULL,
    order_date DATE NOT NULL,
    ship_city VARCHAR(100) NOT NULL
);
