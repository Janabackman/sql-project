INSERT INTO Inventory (item_id, name, Price, item_location)
VALUES ("I10", "Dog", 99, "Aisle 4");

INSERT INTO Inventory (item_id, name, Price, item_location)
VALUES ("I11", "Cat", 95, "Aisle 2");

INSERT INTO Inventory (item_id, name, Price, item_location)
VALUES ("I12", "Fish", 50, "Aisle 1");

INSERT INTO Inventory (item_id, name, Price, item_location)
VALUES ("I13", "Hamster", 45, "Aisle 3");

INSERT INTO Inventory (item_id, name, Price, item_location)
VALUES ("I14", "Snake", 70, "Aisle 9");

INSERT INTO Inventory (item_id, name, Price, item_location)
VALUES ("I15", "Rata", 62, "Aisle 7");

INSERT INTO Inventory (item_id, name, Price, item_location)
VALUES ("I16", "Turtle", 80, "Aisle 6");


INSERT INTO Customer (cid, fname, lname, phone, email)
VALUES ("C116", "Marsha", "Rose", "1234056789", "rosem11@gmail.com");

INSERT INTO Customer (cid, fname, lname, phone, email)
VALUES ("C115", "Barry", "White", "9874506123", "barryw221@yahoo.com");

INSERT INTO Customer (cid, fname, lname, phone, email)
VALUES ("C114", "Mike", "Brown", "0872261303", "tabphilly1@aol.com");

INSERT INTO Customer (cid, fname, lname, phone, email)
VALUES ("C113", "Tina", "Turner", "8201561231", "tinad21@yahoo.com");

INSERT INTO Customer (cid, fname, lname, phone, email)
VALUES ("C112", "Angela", "Boyd", "7040506123", "momof5boys@msn.com");

INSERT INTO Customer (cid, fname, lname, phone, email)
VALUES ("C111", "Julien", "Young", "5410006123", "kingjulien40@rap.com");

INSERT INTO Customer (cid, fname, lname, phone, email)
VALUES ("C110", "Momo", "Soul", "4455784128", "momofriend12@soul.com");


INSERT INTO Sales (salesnum, item_qty, date, cid_FK, item_id_FK)
VALUES ("S01", 2, "2019-10-15", "C110", "I16");

INSERT INTO Sales (salesnum, item_qty, Date, cid_FK, item_id_FK)
VALUES ("S02", 1, "2019-05-12", "C111", "I15");

INSERT INTO Sales (salesnum, item_qty, Date, cid_FK, item_id_FK)
VALUES ("S03", 3, "2019-10-15", "C112", "I14");

INSERT INTO Sales (salesnum, item_qty, Date, cid_FK, item_id_FK)
VALUES ("S04", 2, "2019-01-01", "C113", "I13");

INSERT INTO Sales (salesnum, item_qty, Date, cid_FK, item_id_FK)
VALUES ("S05", 5, "2019-12-25", "C114", "I12");

INSERT INTO Sales (salesnum, item_qty, Date, cid_FK, item_id_FK)
VALUES ("S06", 2, "2019-02-05", "C115", "I11");

INSERT INTO Sales (salesnum, item_qty, Date, cid_FK, item_id_FK)
VALUES ("S07", 1, "2019-11-10", "C116", "I10");


INSERT INTO Employee (eid, fname, lname, phone, ssn, dob)
VALUES ("E201", "Carolyn", "Mathis", "2152188163", "202112255", "1980-03-04");

INSERT INTO Employee (eid, fname, lname, phone, ssn, dob)
VALUES ("E200", "Michael", "Cooley", "1642011000", "202012055", "1986-07-04");

INSERT INTO Employee (eid, fname, lname, phone, ssn, dob)
VALUES ("E203", "Mark", "Johnson", "1452006660", "002110255", "1982-02-09");

INSERT INTO Employee (eid, fname, lname, phone, ssn, dob)
VALUES ("E202", "Vernette", "Peterson", "2157474020", "122551111", "1972-09-11");

INSERT INTO Employee (eid, fname,lname, phone, ssn, dob)
VALUES ("E205", "Ronald", "Pollitt", "1402040010", "202222255", "1960-01-24");

INSERT INTO Employee (eid, fname, lname, phone, ssn, dob)
VALUES ("E204", "Stevie", "Willis", "1520555020", "200115555", "1989-06-14");

INSERT INTO Employee (eid, fname, lname, phone, ssn, dob)
VALUES ("E206", "Shelly", "Homes", "1452110120", "112200755", "1988-08-29");


INSERT INTO Services (servicenum, date, description, eid_FK, cid_FK)
VALUES ("01", "2019-10-25", "Basic Package", "E200", "C110");

INSERT INTO Services (servicenum, date, description, eid_FK, cid_FK)
VALUES ("03", "2019-05-15", "Gold Package", "E201", "C111");

INSERT INTO Services (servicenum, date, description, eid_FK, cid_FK)
VALUES ("02", "2019-10-25", "Silver Package", "E202", "C112");

INSERT INTO Services (servicenum, date, description, eid_FK, cid_FK)
VALUES ("05", "2019-03-05", "Basic Package", "E203", "C113");

INSERT INTO Services (servicenum, date, description, eid_FK, cid_FK)
VALUES ("04", "2019-12-30", "Basic Package", "E204", "C114");

INSERT INTO Services (servicenum, date, description, eid_FK, cid_FK)
VALUES ("07", "2019-02-15", "Gold Package", "E205", "C115");

INSERT INTO Services (servicenum, date, description, eid_FK, cid_FK)
VALUES ("06", "2019-11-19", "Silver Package", "E206", "C116");

ALTER TABLE Employee
ADD salary DOUBLE DEFAULT 0.00;

UPDATE Employee
SET salary = 2900.00
WHERE eid = "E200";

UPDATE Employee
SET salary = 2350.90
WHERE eid = "E201";

UPDATE Employee
SET salary = 2995.90
WHERE eid = "E202";

UPDATE Employee
SET salary = 2500.50
WHERE eid = "E203";

UPDATE Employee
SET salary = 2497.30
WHERE eid = "E204";

UPDATE Employee
SET salary = 2300.00
WHERE eid = "E205";

UPDATE Employee
SET salary = 2800.00
WHERE eid = "E206";

