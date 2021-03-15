CREATE DATABASE RETAILDB;
USE RETAILDB;

CREATE TABLE RETAIL (
	ID INT PRIMARY KEY CHECK (ID BETWEEN 1 and 1000),
	NAME CHAR(100),
	COUNTRY VARCHAR(25),
	CREDITS INT
);

INSERT INTO RETAIL 
	(ID, NAME, COUNTRY, CREDITS) VALUES
	(1, 'Frances White', 'USA', 200350),
	(2, 'Carolyn Bradley', 'UK', 15354),			
	(3, 'Annie Fernandez', 'France', 359200),
	(4, 'Ruth Hanson', 'Albania', 1060),		
	(5, 'Paula Fuller', 'USA', 14789),		
	(6, 'Bonnie Johnston', 'China', 100243),		
	(7, 'Ruth Gutierrez', 'USA', 998999),	
	(8, 'Ernest Thomas', 'Canada', 500500),	
	(9, 'Joe Garza', 'UK', 18782),			
	(10, 'Anne Harris', 'USA', 158367);

 SELECT ID, NAME FROM RETAIL ORDER BY NAME DESC , ID ASC