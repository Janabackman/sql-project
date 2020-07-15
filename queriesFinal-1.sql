-- stored trigers

CREATE TABLE employees_Save (
    id INT AUTO_INCREMENT PRIMARY KEY,
    eid VARCHAR(10) NOT NULL,
    fname VARCHAR (200) NOT NULL,
    lname VARCHAR(125) NOT NULL,
    phone CHAR(10),
    ssn CHAR(9) NOT NULL,
    salary DOUBLE,
    changedat DATETIME DEFAULT NULL,
    action VARCHAR(50) DEFAULT NULL
);


SELECT * FROM employees_save;

CREATE TRIGGER before_employee_update
    BEFORE UPDATE ON employee
    FOR EACH ROW
INSERT INTO employees_save
SET action = 'update',
     eid = OLD.eid,
     fname = OLD.fname,
     lname = OLD.lname,
     phone = OLD.phone,
     ssn = OLD.ssn,
     salary = OLD.salary,
     changedat = NOW(); 

CREATE TRIGGER before_employee_delete
    BEFORE DELETE ON employee
    FOR EACH ROW
INSERT INTO employees_save
SET action = 'delete',
     eid = OLD.eid,
     fname = OLD.fname,
     lname = OLD.lname,
     phone = OLD.phone,
     ssn = OLD.ssn,
     salary = OLD.salary,
     changedat = NOW(); 

-- UNION
SELECT fname, lname
FROM employee
UNION
SELECT fname, lname
FROM manager;

-- UNION (with duplicates)
SELECT fname, lname FROM employee
UNION ALL
SELECT fname, lname FROM manager;


-- INTERSECTION
SELECT e.fname, e.lname, eid
FROM employee AS e
JOIN manager 
ON eid=mid;

-- DIFFERENCE 1
SELECT eid, e.fname, e.lname
FROM employee AS e
WHERE (eid, e.fname, e.lname) NOT IN
(SELECT mid, m.fname, m.lname 
   FROM manager AS m);

-- DIFFERENCE 2
SELECT  mid,m.fname, m.lname
FROM manager AS m
WHERE (mid, m.fname, m.lname) NOT IN
(SELECT eid, e.fname, e.lname 
   FROM employee AS e);

-- select all employees that gave service between 2019-05 to 2019- 10
SELECT e.fname, e.lname
FROM employee AS e
JOIN services AS s
ON e.eid = s.eid_FK
WHERE date between "2019-05-01" AND "2019-10-30";

-- alter table 1
ALTER TABLE employee
MODIFY COLUMN fname VARCHAR(200);

-- alter table 2
ALTER TABLE employee
MODIFY COLUMN lname VARCHAR (125);

-- update 1
UPDATE employee
SET phone = "9877866543"
WHERE eid= "E200";

SELECT * FROM employee;

-- update 2
UPDATE employee
SET salary = 3600.90
WHERE eid = "E201";

-- update also in manager
UPDATE manager
SET salary = 3600.90
WHERE mid = "E201";

-- delete 
DELETE FROM sales
WHERE item_qty > 3 
OR  date <= "2019-10-30";

DELETE FROM services
WHERE eid_FK = "E201";

DELETE FROM employee
WHERE eid= "E201";

-- agregation count all employees that serve after 2019-10
SELECT COUNT(*)
FROM employee
JOIN services 
ON employee.eid= services.eid_FK
WHERE date >= "2019-10-01";

-- agregation get the average of salary of all employees
SELECT AVG(salary) AS average
FROM employee;

-- agregation using group by, get minimum salary of managers from diffrent states
SELECT MIN(salary), state
FROM manager
GROUP BY state;

-- agregation using group by and having, get average salary of manegers from FL
SELECT AVG(salary)
FROM manager
GROUP BY state
HAVING state = "FL";

-- sorting the result query
SELECT fname, lname, eid
FROM employee
ORDER BY lname, fname DESC;

-- stored posedure
DELIMITER //
CREATE PROCEDURE describeEmployeeAndSelect()
BEGIN
DESCRIBE employee;
SELECT * FROM employee;
END//
DELIMITER ;

CALL describeEmployeeAndSelect();

SELECT * FROM employees_save;


