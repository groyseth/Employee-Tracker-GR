SELECT employee.employee_id, employee.first_name, employee.last_name, employee_role.title, employee_role.salary, department.department_name AS department 
FROM employee LEFT JOIN employee_role ON employee.role_id = employee_role.role_id
LEFT JOIN department ON employee_role.role_id = department.department_id;
