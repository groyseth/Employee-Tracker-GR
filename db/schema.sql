DROP DATABASE IF EXISTS manager_db;
CREATE DATABASE manager_db;

USE manager_db;

CREATE TABLE department (
  department_id INT NOT NULL AUTO_INCREMENT,
  department_name VARCHAR(30),
  PRIMARY KEY (department_id, department_name)
);
-- id`: `INT PRIMARY KEY
CREATE TABLE employee_role (
    role_id INT NOT NULL AUTO_INCREMENT,
    title  VARCHAR(30) ,
    salary DECIMAL,
    dep_id INT,
    dep_name VARCHAR(30),
    FOREIGN KEY (dep_id, dep_name)REFERENCES department(department_id, department_name)
    ON DELETE SET NULL,
    PRIMARY KEY (role_id,title, salary)
);


CREATE TABLE employee (
    employee_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    role_title VARCHAR(30),
    department_name VARCHAR(30),
    manager_id INT,
    salary DECIMAL,
    manager_name VARCHAR(30),
    FOREIGN KEY (manager_id)REFERENCES employee(employee_id),
    -- ON DELETE SET NULL,
    FOREIGN KEY (role_id, role_title, salary)REFERENCES employee_role(role_id, title, salary)
    ON DELETE SET NULL,
    -- FOREIGN KEY (department_name) REFERENCES employee_role(dep_name),
    -- FOREIGN KEY (department_name) REFERENCES 
    PRIMARY KEY(employee_id)
);
--   * `id`: `INT PRIMARY KEY`

--     * `first_name`: `VARCHAR(30)` to hold employee first name

--     * `last_name`: `VARCHAR(30)` to hold employee last name

--     * `role_id`: `INT` to hold reference to employee role

--     * `manager_id`: `INT`