DROP DATABASE IF EXISTS manager_db;
CREATE DATABASE manager_db;

USE manager_db;

CREATE TABLE department (
  department_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(30) NOT NULL
);
-- id`: `INT PRIMARY KEY
CREATE TABLE employee_role (
    role_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) unique key,
    salary DECIMAL,
    dep_id INT,
    FOREIGN KEY (dep_id)
    REFERENCES department(department_id)
    ON DELETE SET NULL
);


CREATE TABLE employee (
    employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    role_title VARCHAR(30) unique KEY,
    manager_id INT,
    manager_name VARCHAR(30),
    FOREIGN KEY (role_id)
    REFERENCES employee_role(role_id)
    ON DELETE SET NULL,
    FOREIGN KEY (manager_id)
    REFERENCES employee(employee_id)
    ON DELETE SET NULL,
    FOREIGN KEY (role_title)
    REFERENCES employee_role(title)
    ON DELETE SET NULL
);
--   * `id`: `INT PRIMARY KEY`

--     * `first_name`: `VARCHAR(30)` to hold employee first name

--     * `last_name`: `VARCHAR(30)` to hold employee last name

--     * `role_id`: `INT` to hold reference to employee role

--     * `manager_id`: `INT`