const fs = require('fs');
const inquirer = require('inquirer');


function init() {
    inquirer
        .prompt([
          
            {
                type: "list",
                message: "What would you like to do?",
                choices: [""],
                name: "anotherManager"
            },
        ])
    }
    init();