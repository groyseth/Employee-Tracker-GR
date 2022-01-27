const fs = require('fs');
const inquirer = require('inquirer');
const mysql = require('mysql2');
const { endianness } = require('os');


const db = mysql.createConnection(
  {
    host: 'localhost',
    // MySQL username,
    user: 'root',
    // MySQL password
    password: 'Root',
    database: 'manager_db'
  },
  console.log(`Connected to the manager_db database.`)
);

function department() {
  db.query("SELECT * FROM department ", function (err, result) {
    if (err) throw err;
    console.log("department results:", result);
    initalChoice();

  })
}


function employee_role() {
  db.query("SELECT * FROM employee_role", function (err, result) {
    if (err) throw error;
    console.log("employee role results:", result);
    initalChoice();
  })
}
// employee_role()

function employee() {
  db.query("SELECT * FROM employee", function (err, result) {
    if (err) throw error;
    console.log("employee info results:", result);
    initalChoice();
  })
}
// var snow = "snow";
function addDepartment() {
  inquirer
    .prompt([

      {
        type: "input",
        message: "What department would you like to add?",
        name: "depName"
      }
    ])
    .then((answer) => {


      db.query("INSERT INTO department (department_name) VALUES (?)", answer.depName, function (err, result) {
        if (err) throw err;
        console.log("added department:", result);
      })
    })
}


function addRole() {
  db.query("SELECT * FROM department ", function (err, result) {

    const choices = result.map(r => {
      return { name: r.department_name, value: r.department_id }
    })

    inquirer
      .prompt([

        {
          type: "input",
          message: "What role title would you like to add?",
          name: "roleName"
        },
        {
          type: "input",
          message: "What role salary would you like to add?",
          name: "salary"
        },
        {
          type: "list",
          message: "What department does this role belong to?",
          choices,
          name: "departmentID"
        }
      ])
      .then((answer) => {
        //use role for choices \
        //

        db.query("INSERT INTO employee_role (title, salary, dep_id) VALUES ( ?, ?, ?)", [answer.roleName, answer.salary, answer.departmentID], function (err, result) {
          if (err) throw err;
          console.log("added role:", result);
          initalChoice();
        })
      })
  })
}



function addEmployee() {
  db.query("SELECT * FROM employee ", function (err, result) {
   console.log(result);
    const choices = result.map(r => {
      return { name: r.role_title, value: r.role_title }
      
    })

    const managerChoices = result.map(r => {
      return { name: r.first_name, value: r.role_id }
    })
    inquirer
      .prompt([

        {
          type: "input",
          message: "What is the employee first name?",
          name: "empFirst"
        },
        {
          type: "input",
          message: "What is employee last name?",
          name: "empLast"
        },
        {
          type: "list",
          message: "What is employee role?",
          choices,
          name: "empRole"
        },
        {
          type: "list",
          message: "Who is your manager?",
          choices:managerChoices,
          name: "empManager"
        }

      ])
      .then((answer) => {
        console.log(answer);
        // db.query("INSERT INTO employee (first_name, last_name, role_id, manager_id) VALUES(?, ?, ?, ?)", [answer.empFirst, answer.empLast, answer.empRole, answer.empManager], function (err, result) {
        //   if (err) throw err;
        //   console.log("Added employee:", result);
        //   initalChoice();
        // })
      })
  })
}


// employee()

function initalChoice() {

  inquirer
    .prompt([

      {
        type: "list",
        message: "Please select one",
        choices: ["View all departments", "view all roles", "view all employees", "add a department", "add a role", "add an employee", "update an employee role", "Exit"],
        name: "options"
      }

    ])
    .then((answer) => {
      console.log(answer);
      switch (answer.options) {
        case "View all departments":
          department()
          break;
        case "view all roles":
          employee_role()
          break;
        case "view all employees":
          employee()
          break;
        case "add a department":
          addDepartment()
          break;
        case "add a role":
          addRole()
          break;
        case "add an employee":
          addEmployee()
          break;
        case "update an employee role":

          break;
        case "Exit":
          return;


      }
    })

}
initalChoice()
