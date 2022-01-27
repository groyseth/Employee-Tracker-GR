const fs = require('fs');
const inquirer = require('inquirer');
const mysql = require('mysql2');


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

function department () {
    db.query("SELECT * FROM department ", function (err, result) {
        if(err) throw err;
        console.log("department results:", result); 
        initalChoice();
        
    })
}


function employee_role () {
  db.query("SELECT * FROM employee_role", function (err, result) {
    if(err) throw error;
    console.log("employee role results:", result); 
    initalChoice();
})
}
// employee_role()

function employee () {
  db.query("SELECT * FROM employee", function (err, result) {
    if(err) throw error;
    console.log("employee info results:", result); 
    initalChoice();
})
}
// var snow = "snow";
function addDepartment () {
  inquirer
          .prompt([
            
            {
              type: "input",
              message: "What department would you like to add?",
              name: "depName"
          }
        ])
        .then((answer) => {

         
  db.query("INSERT INTO department (department_name) VALUES (?)", answer.depName, function(err, result){
    if(err) throw err;
    console.log("added department:", result); 
  })
  })
}


function addRole () {
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
            name: "salaryName"
        },
        {
          type: "input",
          message: "What department id would you like to add?",
          name: "roleID"
      }
        ])
        .then((answer) => {

         
  db.query("INSERT INTO employee_role (title, salary, dep_id) VALUES (?, ?, ?)", answer.roleName, answer.salaryName,  function(err, result){
    if(err) throw err;
    console.log("added role:", result); 
  })
  })
}



// function employee() {
//     inquirer
//         .prompt([
          
//           {
//             type: "input",
//             message: "What is the employee first name?",
//             name: "employeeName"
//         },
//         {
//             type: "input",
//             message: "What is employee last name?",
//             name: "employeeName"
//         },
//         {
//           type: "input",
//           message: "What is employee last name?",
//           name: "employeeName"
//       }

//         ])
//         .then((managerInfo) =>{
//           console.log(managerInfo);
//         })
//     }
    
// employee()

function initalChoice ()  {

  inquirer
        .prompt([
          
          {
            type: "list",
            message: "Please select one",
            choices: ["View all departments", "view all roles", "view all employees", "add a department", "add a role", "add an employee", "update an employee role"],
            name: "options"
        }
        
  ])
  .then ((answer) => {
    console.log(answer);
    switch(answer.options) {
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
    }
  })

}
initalChoice()
