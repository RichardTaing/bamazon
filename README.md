# bamazon

_Bamazon is a console store front where a user can buy product and a manager can restock and add new product 3 files were made to handle store from a customer, manager, and supervisor position_

## Objectives

- bamazon.js

  - Create a MySQL database to handle the store
  - Create a table to handle all the store's inventory and identifying them by:

    - Product ID
    - Name
    - Department
    - Price to Buyer
    - Amount in Stock
    - Total Sale amount (bonus)

  - Connect the bamazon.js file to the database to allow connection.query's
  - Make a function to let the user order a product based on its product id (integer)
  - Let the user choose an amount they want to purchase and the cost per item/s
  - Update the inventory in the database to the order

- bamazonManager.js (bonus)

  - The file lets the user play a managerial role in the app restocking items and even ordering new items
  - running the app gives the Manager four options:

    - See a list of all available products in stock
    - See a list of products that are low (<5)
    - Restock a product
    - Add a new product to the database

  - Updates the MySQL database accordingly

- bamazonSupervisor.js (bonus)

  - This file lets the user play a supervisor role in the app, making sure the store is making money
  - running the app allows the Supervisor to add a new department, with the following fields:

    - department_id
    - department_name
    - overheads

  - The products table displays the products, departments, price, stock, and sales table
  - Running the app gives the supervisor 2 options:

    - Seeing the departments, this is where the join is used showing profits
    - Add a new department with its own overhead

  ### Demo of Working Bamazon

  [Bamazon](https://drive.google.com/open?id=1S7xrBc2cQvxAnocY9_9Lv9tgpr1LpXAJ)

## How to Use

      * With the code open the console
      * type node + either bamazon.js, bamazonManager.js, bamazonSupervisor.js
      * if it is asking for a quantity only put an intiger
      * if its asking for a product name a combination will work

## Technologies Used

     * JavaScript to write the program
     * Node.js to run the program
     * Inquirer NPM to make the prompts
     * console.table to display the data as a table in the console
     * MySQL as the stores working database
