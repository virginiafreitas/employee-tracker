const db = require('./db/connection');

const inquirer = require('inquirer');

async function viewEmployees() {
    const employees = await db.promise().query("SELECT * FROM employee")
    console.table(employees[0])
}

async function init() {
    const response = await inquirer.prompt([
        {
            type: "list",
            name: "mainChoice",
            message: "Welcome to Employee Tracker. Please select an option.",
            choices: ["View All Employees", "Add Employee", "Update Employee Role", "View All Roles", "Add Role", "View All Departments", "Add Department"]
        }
    ])
    if (response.mainChoice === "View All Employees") {
        viewEmployees();
    } else if (response.mainChoice === "Add Employee") {
        viewEmployees();
    } else if (response.mainChoice === "Update Employee Role") {
        viewEmployees();
    } else if (response.mainChoice === "View All Roles") {
        viewEmployees();
    } else if (response.mainChoice === "Add Role") {
        viewEmployees();
    } else if (response.mainChoice === "View All Departments") {
        viewEmployees();
    } else (response.mainChoice === "Add Department"); {
        viewEmployees();
    }
}

init();