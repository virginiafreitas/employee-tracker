-- drop existing database
DROP DATABASE IF EXISTS employees_db;

-- create new database 
CREATE DATABASE employees_db; 

-- use db
USE employees_db;

-- create 3 tables:

-- create 1st table: department
CREATE TABLE department (
-- create id and dept name columns
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(30)
);

-- create 2nd table: role
CREATE TABLE role (
-- create id**, title, salary and department_id** columns
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

-- create 3rd table: employee
CREATE TABLE employee (
-- create id**, first name, last name, role_id** and manager_id**
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);


-- run packages on terminal (already did):
-- npm init -y
-- run npm i inquirer@8.2.4 on terminal
-- run mysql package: npm i mysql2

