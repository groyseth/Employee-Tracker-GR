DROP DATABASE IF EXISTS manager_db;
CREATE DATABASE manager_db;

USE manager_db;


CREATE TABLE department (
  department_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(30) NOT NULL
  
);

CREATE TABLE employee_role (
    role_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title  VARCHAR(30),
    salary DECIMAL,
    dep_id INT,
    FOREIGN KEY (dep_id) REFERENCES department(department_id)
    ON DELETE SET NULL
    
);




CREATE TABLE employee (
    employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    FOREIGN KEY (manager_id)REFERENCES employee(employee_id),
    
    FOREIGN KEY (role_id)REFERENCES employee_role(role_id)

    
);
