// cdns for inquirer, mysql and myTable
var inquirer = require("inquirer");
var mysql = require("mysql");
var myTable = require("console.table");

var connection = mysql.createConnection({
  host: "localhost",

  //My local port
  port: 3306,

  //My username
  user: "root",

  //Password and database
  password: "MonashBootCamp2019",
  database: "bamazon"
});
