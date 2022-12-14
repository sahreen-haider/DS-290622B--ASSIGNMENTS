DROP DATABASE IF EXISTS SALES;

-- CREATE DATABASE SALES;
CREATE DATABASE SALES;
USE SALES;

CREATE TABLE SALESPEOPLE(SNUM INT PRIMARY KEY,
SNAME VARCHAR(250),
CITY VARCHAR(250),
COMM INT,
UNIQUE (SNAME));

CREATE TABLE CUSTOMERS(CNUM INT PRIMARY KEY,
CNAME VARCHAR(250),
CITY VARCHAR(250) NOT NULL,
SNUM INT,
FOREIGN KEY (SNUM) REFERENCES SALESPEOPLE(SNUM)
);

CREATE TABLE ORDERS(ONUM INT PRIMARY KEY,
AMT DECIMAL,
ODATE VARCHAR(250),
CNUM INT,
SNUM INT,
FOREIGN KEY (CNUM) REFERENCES CUSTOMERS(CNUM),
FOREIGN KEY (SNUM) REFERENCES SALESPEOPLE(SNUM)
);

# INSERTING THE DATA INTO THE TABLES

# INSERTING INTO THE SALESPEOPLE TABLE
INSERT INTO SALESPEOPLE(SNUM,SNAME,CITY,COMM) VALUES(1001,'Peel','London',12);
INSERT INTO SALESPEOPLE(SNUM,SNAME,CITY,COMM) VALUES(1002,'Serres','Sanjose',13);
INSERT INTO SALESPEOPLE(SNUM,SNAME,CITY,COMM) VALUES(1004,'Motika','London',11);
INSERT INTO SALESPEOPLE(SNUM,SNAME,CITY,COMM) VALUES(1007,'Rifkin','Barcelona',15);
INSERT INTO SALESPEOPLE(SNUM,SNAME,CITY,COMM) VALUES(1003,'Axelrod','Newyork',10);

# INSERTING INTO THE CUTOMERS TABLE
INSERT INTO CUSTOMERS(CNUM,CNAME,CITY,SNUM) VALUES(2001,"Hoffman","London",1001);
INSERT INTO CUSTOMERS(CNUM,CNAME,CITY,SNUM) VALUES(2002,"Giovanni","Rome",1003);
INSERT INTO CUSTOMERS(CNUM,CNAME,CITY,SNUM) VALUES(2003,"Liu","Sanjose",1002);
INSERT INTO CUSTOMERS(CNUM,CNAME,CITY,SNUM) VALUES(2004,"Grass","Berlin",1002);
INSERT INTO CUSTOMERS(CNUM,CNAME,CITY,SNUM) VALUES(2006,"Clemens","London",1001);
INSERT INTO CUSTOMERS(CNUM,CNAME,CITY,SNUM) VALUES(2008,"Cisneros","Sanjose",1007);
INSERT INTO CUSTOMERS(CNUM,CNAME,CITY,SNUM) VALUES(2007,"Pereira","Rome",1004);

# INSERTING INTO THE ORDERS TABLE
INSERT INTO ORDERS(ONUM,AMT,ODATE,CNUM,SNUM) VALUES(3001,18.69,"3-10-1990",2008,1007);
INSERT INTO ORDERS(ONUM,AMT,ODATE,CNUM,SNUM) VALUES(3003,767.19,"3-10-1990",2001,1001);
INSERT INTO ORDERS(ONUM,AMT,ODATE,CNUM,SNUM) VALUES(3002,1900.10,"3-10-1990",2007,1004);
INSERT INTO ORDERS(ONUM,AMT,ODATE,CNUM,SNUM) VALUES(3005,5160.45,"3-10-1990",2003,1002);
INSERT INTO ORDERS(ONUM,AMT,ODATE,CNUM,SNUM) VALUES(3006,1098.16,"3-10-1990",2008,1007);
INSERT INTO ORDERS(ONUM,AMT,ODATE,CNUM,SNUM) VALUES(3009,1713.23,"4-10-1990",2002,1003);
INSERT INTO ORDERS(ONUM,AMT,ODATE,CNUM,SNUM) VALUES(3007,75.75,"4-10-1990",2004,1002);
INSERT INTO ORDERS(ONUM,AMT,ODATE,CNUM,SNUM) VALUES(3008,4273.00,"5-10-1990",2006,1001);
INSERT INTO ORDERS(ONUM,AMT,ODATE,CNUM,SNUM) VALUES(3010,1309.95,"6-10-1990",2004,1002);
INSERT INTO ORDERS(ONUM,AMT,ODATE,CNUM,SNUM) VALUES(3011,9891.88,"6-10-1990",2006,1001);




# CMD'S THAT BRING UP THE RESULTS,
SELECT COUNT(SNAME) FROM SALESPEOPLE WHERE SNAME LIKE 'a%' OR 'A%';
SELECT SNUM,AMT FROM ORDERS WHERE AMT > 2000;
SELECT COUNT(SNUM) FROM SALESPEOPLE WHERE CITY = "Newyork";
SELECT COUNT(SNUM) FROM SALESPEOPLE WHERE CITY = "Newyork" OR CITY = "Paris";
SELECT COUNT(SNUM), SNUM, ODATE FROM ORDERS GROUP BY ODATE, SNUM;