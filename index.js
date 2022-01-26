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
    console.log(`Connected to the movies_db database.`)
  );

function querying () {
    db.query("SELECT * FROM employee", function (err, result) {
        if(err) throw error;
        console.log("results:", result); 
        db.end()
        
    })
}
querying()

// function init() {
//     inquirer
//         .prompt([
          
//             {
//                 type: "list",
//                 message: "What would you like to do?",
//                 choices: [""],
//                 name: "anotherManager"
//             },
//         ])
//     }
//     init();