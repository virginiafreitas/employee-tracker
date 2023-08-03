const db = require('./db/connection');

const inquirer = require('inquirer');

async function viewEmployees() {
    const employees = await db.promise().query("SELECT * FROM employee")
    console.table(employees[0])
}
