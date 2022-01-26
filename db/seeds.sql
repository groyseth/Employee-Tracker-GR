INSERT INTO department (department_name)
VALUES ("microsoft"),
    ("google"),
    ("manager"),
    ("front-end");



INSERT INTO employee_role (title, salary)
VALUES ("programer", 30030.00),
("cool guy", 39339.00),
("Janater", 10.00),
("Guy standing at door", 1.00);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Grant", "Royseth", 1, 1),
("Brody", "Mike", 2, 2),
("Yohan", "Provloskie", 3, 3),
("Chad", "Megachad", 4, 1);
-- INSERT INTO employee