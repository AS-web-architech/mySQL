create database cocacompany;
use db2;
CREATE TABLE patron (
	patron_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	address VARCHAR(255) DEFAULT NULL,
	city VARCHAR(255) DEFAULT NULL,
	state VARCHAR(2) DEFAULT NULL,
	zip_code VARCHAR(5) DEFAULT NULL
);
insert into patron(first_name,last_name,email,address ,city ,state ,zip_code)values 
("areeba","shafi","areeba@gmail.com","Hno64,St-11","karachi","42","10004"),
("aiman","hussain","hussain@gmail.com","Hno62,St-11","lahore","44","10005"),
("umer","ejaz","ejaz@gmail.com","Hno60,St-11","quetta","42","10006"),
("habiba","noor","habiba@gmail.com","Hno63,St-11","islamabad","45","10007"),
("manahil","asif","manahil@gmail.com","Hno61,St-11","rawalpindi","45","10008");
select*from patron;
CREATE TABLE docket (
	docket_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	patron_id INT NOT NULL,
	docket_placed_date DATE NOT NULL,
	FOREIGN KEY (patron_id) REFERENCES patron(patron_id)
);
insert into docket(patron_id,docket_placed_date) values
("2","2022-11-5"),
("4","2022-11-8"),
("5","2022-11-7"),
("3","2022-11-6");
select*from docket;
select patron.email,patron.patron_id,docket.docket_id,docket.docket_placed_date from patron join docket on 
patron.patron_id=docket.patron_id ;
