DROP DATABASE PetStore;
CREATE DATABASE PetStore;
USE PetStore;

CREATE TABLE Inventory
(
    item_ID      VARCHAR(10),
    name         VARCHAR(15) NOT NULL,
    price        DOUBLE NOT NULL,
    item_location VARCHAR(10),

CONSTRAINT Inventory_PK PRIMARY KEY (item_ID)
);

CREATE TABLE Customer
(
    cid     VARCHAR(5),
    fName         VARCHAR(15) NOT NULL,
    lName         VARCHAR(20) NOT NULL,
    phone        CHAR(10),
    email      VARCHAR(30),

CONSTRAINT Customer_PK PRIMARY KEY (cid)
);

CREATE TABLE Sales
(
    salesNum     VARCHAR(6),
    item_qty     INT NOT NULL,
    date         DATE NOT NULL,
    cid_FK       VARCHAR(5) NOT NULL,
    item_ID_FK   VARCHAR(10) NOT NULL, 

CONSTRAINT Sales_PK PRIMARY KEY (salesNum),

CONSTRAINT Sales_FK1 FOREIGN KEY (cid_FK) 
REFERENCES Customer(cid),

CONSTRAINT Sales_FK2 FOREIGN KEY (item_ID_FK)
REFERENCES Inventory(item_ID)
);

CREATE TABLE Employee
(
    eid     VARCHAR(6),
    fname   VARCHAR(20) NOT NULL,
    lname   VARCHAR(30) NOT NULL,
    phone   CHAR(10),
    ssn     CHAR (9) NOT NULL,
    dob     DATE  NOT NULL,
    
CONSTRAINT Employee_PK PRIMARY KEY (eid)
);

CREATE TABLE Services
(
    serviceNum     VARCHAR(10),
    date     DATE NOT NULL,
    description   VARCHAR(255) NOT NULL,
    cid_FK       VARCHAR(5) NOT NULL,
    eid_FK       VARCHAR(6) NOT NULL, 

CONSTRAINT Services_PK PRIMARY KEY (serviceNum),

CONSTRAINT Services_FK1 FOREIGN KEY (cid_FK) 
REFERENCES Customer(cid),

CONSTRAINT Services_FK2 FOREIGN KEY (eid_FK)
REFERENCES Employee(eid)
);


-- mirror table (from employee)
CREATE TABLE Manager
(
    mid     VARCHAR(6),
    fName   VARCHAR(20) NOT NULL,
    lName   VARCHAR(30) NOT NULL,
    phone   CHAR(10),
    ssn     CHAR (9) NOT NULL,
    dob     DATE  NOT NULL,
    salary  DOUBLE,

CONSTRAINT Manager_PK PRIMARY KEY (mid)
);

insert into manager
  (select * 
    from Employee
   limit 2);

ALTER TABLE Manager
ADD state VARCHAR(2) DEFAULT "PA";


INSERT INTO manager (mid, fname, lname, phone, ssn, dob, salary, state)
VALUES ("E300", "Jana", "Backman", "4525525642","199827726", "1995-07-30", 2500.00,"FL");

INSERT INTO manager (mid, fname, lname, phone, ssn, dob, salary, state)
VALUES ("E302", "Sabastian", "Garcia", "4525525452","199337726", "1992-11-30", 2680.00,"GA");

INSERT INTO manager (mid, fname, lname, phone, ssn, dob, salary, state)
VALUES ("E305", "Enrique", "Santos", "4525225642","199822726", "1987-07-30", 3100.00,"FL");
