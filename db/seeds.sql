INSERT INTO department (department_name)
VALUES ("microsoft"),
    ("google"),
    ("holiday"),
    ("front-end");



INSERT INTO employee_role (title, salary, dep_name)
VALUES ("programer", 30030.00,  "microsoft"),
("Intern", 39339.00,  "google"),
("Janater", 10.00,  "holiday"),
("manager", 100.00,   "front-end");
-- ("None")


INSERT INTO employee (first_name, last_name, role_title,  manager_name)
VALUES ("Grant", "Royseth",  "programer",  "Grant"),
("Brody", "Mike",  "Intern",  "Grant"),
("Yohan", "Provloskie", "Janater",  "Grant"),
("Chad", "Megachad",  "manager","Grant");

-- INSERT INTO employee"Grant", "Royseth"