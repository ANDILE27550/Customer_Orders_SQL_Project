 CREATE DATABASE IF NOT EXISTS freelance_practice;
  USE freelance_practice;
 CREATE TABLE customers ( customer_id INT AUTO_INCREMENT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50), email VARCHAR(100), city VARCHAR(50) );
 CREATE TABLE orders (order_id INT AUTO_INCREMENT PRIMARY KEY, customer_id INT, order_date DATE, amount DECIMAL(10,2), FOREIGN KEY (customer_id) REFERENCES customers (customer_id) );
 INSERT INTO customers (first_name, last_name, email, city)  
      VALUES   
        ('Andile','Luthuli','andile@email.com','Durban'),('Thandi','Nkosi','thandi@email.com','Johannesburg'),('Sipho','Dlamini','sipho@email.com','Cape Town');

INSERT INTO orders (customer_id, order_date, amount) 
 VALUES 
(1, '2025-01-01' , 250.00),(1, '2025-01-10', 180.50), (2,'2025-01-05',400.00),(3, '2025-01-12' ,150.75);