#create db script

CREATE DATABASE tryyii;
use tryyii;

CREATE TABLE ProductType (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(25) NOT NULL, 
	description VARCHAR(255));
	
INSERT INTO ProductType (name) VALUES ("Entree");
INSERT INTO ProductType (name) VALUES ("Side Dishes");
INSERT INTO ProductType (name) VALUES ("Appetizers");

CREATE TABLE Product (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
	name VARCHAR(25) NOT NULL, 
	productType INT NOT NULL,
	price DOUBLE NOT NULL,
	FOREIGN KEY (productType) REFERENCES ProductType(id)
);

INSERT INTO Product (name, productType, price) VALUES ("kung pao chicken", 1, 7.95);
INSERT INTO Product (name, productType, price) VALUES ("rice", 2, 2.0);
INSERT INTO Product (name, productType, price) VALUES ("cucumber salad", 3, 3.49);