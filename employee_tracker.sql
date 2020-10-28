DROP DATABASE IF EXISTS employee_tracker_db;
CREATE DATABASE employee_tracker_db;
USE employee_tracker_db;

CREATE TABLE employees(
  employee_id INTEGER(30) AUTO_INCREMENT NOT NULL,
  firstName VARCHAR(30),
  lastName VARCHAR(30),
  role_id INTEGER,
  manager_id INTEGER NULL,
  PRIMARY KEY (employee_id)
);

CREATE TABLE roles(
  role_id INTEGER(11) AUTO_INCREMENT NOT NULL,
  title VARCHAR(30),
  department_id INTEGER,
  salary DECIMAL(10,2),
  PRIMARY KEY (role_id)
);

CREATE TABLE departments(
  department_id INTEGER(11) AUTO_INCREMENT NOT NULL,
  name VARCHAR(30),
  PRIMARY KEY (department_id)
);

INSERT INTO employees (firstName, lastName, role_id, manager_id) values ('Daenerys', 'Targaryen', 1, NULL);
INSERT INTO employees (firstName, lastName, role_id, manager_id) values ('Tyrion', 'Lannister', 5, 1);
INSERT INTO employees (firstName, lastName, role_id, manager_id) values ('Jon', 'Snow', 4, NULL);
INSERT INTO employees (firstName, lastName, role_id, manager_id) values ('Samwell', 'Tarly', 2, 3);
INSERT INTO employees (firstName, lastName, role_id, manager_id) values ('Grey', 'Worm', 6, 1);
INSERT INTO employees (firstName, lastName, role_id, manager_id) values ('Daario', 'Naharis', 2, 1);

INSERT INTO roles (title, department_id, salary) values ("Lead Engineer", 2, 900);
INSERT INTO roles (title, department_id, salary) values ("Sales Lead", 1, 700);
INSERT INTO roles (title, department_id, salary) values ("Salesperson", 1, 500);
INSERT INTO roles (title, department_id, salary) values ("Software Engineer", 1, 650);
INSERT INTO roles (title, department_id, salary) values ("Lawyer", 4, 900);
INSERT INTO roles (title, department_id, salary) values ("Accountant", 3, 700);

INSERT INTO departments (name) values ("Sales");
INSERT INTO departments (name) values ("Engineering");
INSERT INTO departments (name) values ("Finance");
INSERT INTO departments (name) values ("Legal");

SELECT * FROM employees;
SELECT * FROM roles;
SELECT * FROM departments;

SELECT e2.*, e1.firstName as 'manager_FirstName', e1.lastName as 'manager_LastName' FROM employees as e2
INNER JOIN employees as e1 on e1.employee_id=e2.manager_id;

SELECT * FROM roles
INNER JOIN departments on roles.department_id=departments.department_id;

SELECT * FROM employees
INNER JOIN roles on employees.role_id=roles.role_id
INNER JOIN departments on roles.department_id=departments.department_id
WHERE departments.department_id=3


