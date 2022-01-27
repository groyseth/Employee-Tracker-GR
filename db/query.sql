-- JOIN movies ON reviews.movies = movies.id;
-- SELECT * from movies;

-- JOIN employee_role ON employee.employee_role = employee_role.id;
-- SELECT * from employee;

SELECT 
employee.employee_id,
employee.first_name,
employee.last_name,
employee.manager_id,
employee_role.title,
employee_role.salary,
manager.first_name AS manager,
department.department_name
from employee
  LEFT JOIN employee_role
  ON employee.role_id = employee_role.role_id
  LEFT JOIN employee manager 
  ON employee.manager_id = employee.employee_id
  LEFT JOIN department
  ON employee_role.dep_id = department.department_id;

