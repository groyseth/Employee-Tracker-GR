-- JOIN movies ON reviews.movies = movies.id;
-- SELECT * from movies;

-- JOIN employee_role ON employee.employee_role = employee_role.id;
-- SELECT * from employee;

SELECT 
employee.employee_id,
employee.first_name,
employee.last_name,
employee_role.title,
employee_role.salary,
employee_role.role_id,
department.department_name,
employee.manager_name AS manager

from employee
  LEFT JOIN employee_role
  ON employee.role_title = employee_role.title
  LEFT JOIN employee manager 
  ON employee.manager_id = employee.employee_id
  LEFT JOIN department
  ON department.department_name = employee_role.dep_name;
  
  
  
 

-- SELECT * from employee
-- INCLUDE employee_role;