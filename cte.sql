-- Create and select the database
CREATE DATABASE IF NOT EXISTS company_db;
USE company_db;

-- Create the employees table
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    EmployeeID INT PRIMARY KEY,
    employeename VARCHAR(50),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES employees(EmployeeID)
);

-- Insert sample hierarchical data
INSERT INTO employees (EmployeeID, employeename, ManagerID) VALUES
(1, 'Alice', NULL),      -- Top-level manager (CEO)
(2, 'Bob', 1),           -- Bob reports to Alice
(3, 'Charlie', 2),       -- Charlie reports to Bob
(4, 'David', 2),         -- David reports to Bob
(5, 'Eve', 1);

select * from employees;

with recursive cte as (
select emp.employeeid, emp.employeename, emp.employeename as managerchain
from employees as emp
where emp.managerid is null
union
select emp.employeeid, emp.employeename, 
concat(mgr.managerchain , ' -> ', emp.employeename) as managerchain
from employees as emp
join cte as mgr on emp.managerid = mgr.employeeid )

select * from cte;