INSERT INTO department (department_name)
VALUES ("microsoft"),
    ("google"),
    ("holiday"),
    ("front-end");



INSERT INTO employee_role (title, salary, dep_id)
VALUES ("programer", 30030.00, 1),
("cool guy", 39339.00, 2),
("Janater", 10.00, 3),
("manager", 1.00, 4);


INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Grant", "Royseth", 1, 1),
("Brody", "Mike", 2, 2),
("Yohan", "Provloskie", 3, 3),
("Chad", "Megachad", 4, 1);
-- INSERT INTO employee