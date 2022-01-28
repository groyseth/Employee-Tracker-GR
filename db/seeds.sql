INSERT INTO department (department_name)
VALUES ("microsoft"),
    ("google"),
    ("holiday"),
    ("front-end");



INSERT INTO employee_role (title, salary, dep_name)
VALUES ("programer", 3000.00,  "microsoft"),
("Intern", 20.00,  "google"),
("Janater", 10.00,  "holiday"),
("manager", 100.00,   "front-end");
-- ("None")


INSERT INTO employee (first_name, last_name, role_title, manager_name, department_name, salary)
VALUES ("Grant", "Royseth",  "programer",  "Grant", "microsoft", 3000.00),
("Brody", "Mike",  "Intern",  "Grant", "google", 20.00),
("Yohan", "Provloskie", "Janater",  "Grant", "holiday", 10.00),
("Chad", "Megachad",  "manager","Grant", "front-end", 100.00);

-- INSERT INTO employee"Grant", "Royseth"