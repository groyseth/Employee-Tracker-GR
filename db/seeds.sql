INSERT INTO department (department_name)
VALUES ("microsoft"),
    ("google"),
    ("holiday"),
    ("front-end");



INSERT INTO employee_role (title, salary, dep_id)
VALUES ("programer", 30030.00, 1),
("Intern", 39339.00, 2),
("Janater", 10.00, 3),
("manager", 1.00, 4);


INSERT INTO employee (first_name, last_name, role_id, role_title,  manager_name)
VALUES ("Grant", "Royseth", 1, "programer",  "Grant"),
("Brody", "Mike", 2, "Intern",  "Grant"),
("Yohan", "Provloskie", 3,"Janater",  "Grant"),
("Chad", "Megachad", 4, "manager","Grant");
-- INSERT INTO employee"Grant", "Royseth"