INSERT INTO department (department_name)
VALUES ("microsoft"),
    ("google"),
    ("holiday"),
    ("front-end");



INSERT INTO employee_role (title, salary, dep_id)
VALUES ("programer", 3000.00,  1),
("Intern", 20.00,  2),
("Janater", 10.00,  3),
("manager", 100.00,   4);
-- ("None")


-- INSERT INTO employee (first_name, last_name, role_title, manager_name, department_name)
-- VALUES ("Grant", "Royseth",  "programer",  "Grant","microsoft"),
-- ("Brody", "Mike",  "Intern",  "Grant", "google"),
-- ("Yohan", "Provloskie", "Janater",  "Grant", "holiday"),
-- ("Chad", "Megachad",  "manager","Grant" , "front-end");

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Grant", "Royseth", 1, 1),
("Brody", "Mike",  2 ,1),
("Yohan", "Provloskie", 3, 2),
("Chad", "Megachad",  4, 1);

-- INSERT INTO employee"Grant", "Royseth"