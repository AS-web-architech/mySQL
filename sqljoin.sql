create database Cocoa_company;
use db2;
CREATE TABLE customers11 (
	customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	address VARCHAR(255) DEFAULT NULL,
	city VARCHAR(255) DEFAULT NULL,
	state VARCHAR(2) DEFAULT NULL,
	zip_code VARCHAR(5) DEFAULT NULL
);
insert into customers11 (first_name,last_name,email)values 
("areeba","shafi","areeba@gmail.com"),
("aiman","hussain","hussain@gmail.com"),
("maheen","shafi","maheen@gmail.com"),
("habiba","noor","habiba@gmail.com"),
("manahil","asif","manahil@gmail.com"),
("sandal","ali","sandal@gmail.com"),
("rabia","maqsood","rabia@gmail.com"),
("maryam","ghayas","maryam@gmail.com"),
("laiba","Inam","Inam@gmail.com");
insert into customers11 (first_name,last_name,email)values 
("arisha","aslam","arisha@gmail.com"),
("saman","ejaz","saman@gmail.com"),
("musfirah","ansari","musfirah@gmail.com");
select*from customers11 ;
CREATE TABLE orders11 (
	order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	customer_id INT NOT NULL,
	order_placed_date DATE NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customers11(customer_id)
);
insert into orders11 (customer_id,order_placed_date) values
("2","2022-11-5"),
("4","2022-11-6"),
("5","2022-11-6"),
("3","2022-11-7"),
("1","2022-11-8"),
("7","2022-11-9");
select*from orders11;
insert into orders11 (customer_id,order_placed_date) values
("3","2022-11-8"),
("3","2022-11-9"),
("3","2022-11-11");

select customers11.email,customers11.customer_id,orders11.order_id,orders11.order_placed_date from customers11 inner join orders11 on 
customers11.customer_id=orders11.customer_id order by customers11.email desc;
select count(order_id) from orders11;



