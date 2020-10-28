DROP DATABASE IF EXISTS employee_tracker_db;
CREATE DATABASE employee_tracker_db;
USE employee_tracker_db;

CREATE TABLE employees(
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  firstName VARCHAR(11),
  lastName VARCHAR(11),
  title VARCHAR(11),
  department VARCHAR(11),
  salary DECIMAL(10,2),,
  manager VARCHAR(11),
  PRIMARY KEY (id)
);

CREATE TABLE roles(
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  title VARCHAR(11),
  department VARCHAR(11),
  salary DECIMAL(10,2),
  PRIMARY KEY (id)
);

CREATE TABLE departments(
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  name VARCHAR(30),
  PRIMARY KEY (id)
);

INSERT INTO employees (firstName, lastName, title, department, salary, manager) values ('Jane', 'Austen');
INSERT INTO employees (firstName, lastName, title, department, salary, manager) values ('Mark', 'Twain');
INSERT INTO employees (firstName, lastName, title, department, salary, manager) values ('Lewis', 'Carroll');
INSERT INTO employees (firstName, lastName, title, department, salary, manager) values ('Andre', 'Asselin');

INSERT INTO books (title, authorId) values ('Pride and Prejudice', 1);
INSERT INTO books (title, authorId) values ('Emma', 1);
INSERT INTO books (title, authorId) values ('The Adventures of Tom Sawyer', 2);
INSERT INTO books (title, authorId) values ('Adventures of Huckleberry Finn', 2);
INSERT INTO books (title, authorId) values ('Alice''s Adventures in Wonderland', 3);
INSERT INTO books (title, authorId) values ('Dracula', null);

SELECT * FROM employees;
SELECT * FROM roles;
SELECT * FROM department;
