-- JOIN movies ON reviews.movies = movies.id;
-- SELECT * from movies;

-- JOIN employee_role ON employee.employee_role = employee_role.id;
-- SELECT * from employee;

-- SELECT 
-- employee.employee_id,
-- employee.first_name,
-- employee.last_name,
-- employee_role.title,
-- employee_role.salary,
-- employee_role.role_id,
-- employee.department_name,
-- employee.manager_name AS manager
-- -- department.department_id

-- from employee
--   LEFT JOIN employee_role
--   ON employee.role_title = employee_role.title
--   LEFT JOIN employee manager 
--   ON employee.manager_id = employee.employee_id
--   LEFT JOIN department
--   ON department.department_name = employee_role.dep_name;
SELECT employee.employee_id, employee.first_name, employee.last_name, employee_role.title, employee_role.salary, department.department_name AS department 
FROM employee LEFT JOIN employee_role ON employee.role_id = employee_role.role_id
LEFT JOIN department ON employee_role.role_id = department.department_id;




  -- select * from department
  --  JOIN employee_role
  -- ON employee.employee_id = employee_role.role_id,

  -- select * from employee_role
  -- JOIN employee 
  -- ON employee_role.role_id = employee.employee_id;
  --  JOIN department
  -- ON department.department_id = employee_role.dep_id;
  -- select 
  -- employee_role.role_id,
  
  -- from employee_role
  -- join employee
  -- on employee.employee_id = employee_role.role_id;
  
  
  
 

-- SELECT * from employee
-- INCLUDE employee_role;