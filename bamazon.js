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

connection.connect(function(err) {
  if (err) throw err;
});
connection.query("SELECT * FROM products", function(err, res) {
  //empty array for the attributes for each product
  values = [];
  console.log(
    "Welcome to BBQ's online, here you will find products for your BBQing needs: \n"
  );
  //Loops through all the products on the database
  for (i = 0; i < res.length; i++) {
    //for each i it will push the product into an array and then pushes that array into the empty values array
    array = [];
    array.push(res[i].id, res[i].product_name, res[i].price);
    values.push(array);
  }
  console.log("\n------------------------------------------");
  //this is using the console.table cdn the values are set in the brackets that the values arrays goes in
  console.table(["ID", "Name", "Price"], values);
  console.log("\n------------------------------------------");
  //starts the app
  initialize();
});

initialize = () => {
  //asks the user what they want to buy
  inquirer
    .prompt({
      name: "productId",
      type: "input",
      message: "what is the id of the product you want to buy"
    })
    //callback to ask them how many they want to buy
    .then(function(data) {
      query = "SELECT * FROM products where id=" + data.productId;
      connection.query(query, function(err, res) {
        inquirer
          .prompt({
            name: "skies",
            type: "input",
            message:
              "How many " + res[0].product_name + " would you like to purchase?"
          })
          .then(function(data) {
            //variable to show the new quantity in the database
            var newQuant = res[0].stock_quantity - data.skies;
            //varaible to show how much the units * price costs
            var totalCost = res[0].price * data.skies;
            //variable to show the total sales of that product in the database
            var totalCost1 = res[0].product_sales + totalCost;
            if (data.skies > res[0].stock_quantity) {
              console.log(
                "That's too much, I don't have enough of that product"
              );
            } else {
              //changes the quantity and item sales in the database
              connection.query("UPDATE products SET ? WHERE ?", [
                {
                  stock_quantity: newQuant,
                  product_sales: totalCost1
                },
                {
                  id: res[0].id
                }
              ]);

              console.log(
                "Your order of " +
                  data.skies +
                  " " +
                  res[0].product_name +
                  " has been processed it will cost " +
                  "$" +
                  totalCost +
                  "\n"
              );
              anyMore();
            }
          });
      });
    });
};
//after it prompts the user if they want to still shop
anyMore = () => {
  inquirer
    .prompt({
      name: "more",
      type: "confirm",
      message: "Do you want to buy anthing else?"
    })
    .then(function(data) {
      if (data.more) {
        initialize();
      } else {
        console.log(
          "\nGoodbye Sir/Madam\n\n Thank you for shopping at BBQ's online\n"
        );
        process.exit();
      }
    });
};
