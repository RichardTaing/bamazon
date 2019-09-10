-- creates the database and the table products 
DROP DATABASE IF EXISTS bamazon;
create database bamazon;
USE bamazon;

-- the characteristics of all the fields in the products table
create table products
(
    id INT NOT NULL
    AUTO_INCREMENT,
product_name varchar
    (200),
department_name varchar
    (100),
price int,
stock_quantity int,
primary key
    (id)

);
    -- populates the initial retail
    insert into products
        (product_name, department_name, price, stock_quantity)
    values
        ('Texas Offset Smoker', 'Barbeques', 999, 20 ),
        ('Premium Beefmaster 6 Burner', 'Barbeques', 1299, 5),
        ('Smokin Cow Beef Brisket Rub 300G', 'BBQ Pantry', 14.95, 24),
        ('Whisky Maple BBQSauce', 'BBQ Pantry', 11.95, 12),
        ('Rub Your Butt BBQ Rubs - 3 Pack', 'BBQ Pantry', 32.95, 18),
        ('Monster BBQ Pack', 'Bulk Meat Packs', 299, 20),
        ('Ziggy Ziegler & Brown Twin Grill', 'Barbeques', 718, 4),
        ('Great Southern Lamb Legs Boned & Rolled 1.8kg - 2kg', 'Weekly Specials', 32, 7),
        ('Stubbs Ass Kickin Mini Chilli Set', 'BBQ Pantry', 7.95, 25),
        ('Arrosto Gas Smoker', 'Barbeques', 329, 2);

    -- adds the product_sales field for part 3
    ALTER TABLE products ADD COLUMN product_sales int;

    -- creates the departments table for part 3
    CREATE TABLE departments
    (
        department_id int not null
        auto_increment,
  department_name varchar
        (100),
  overhead int,
  primary key
        (department_id));

        -- populates the department table with name and dummy value for overhead
        INSERT INTO departments
            (department_name, overhead)
        values
            ('Barbeques', 50),
            ('BBQ Pantry', 60),
            ('Bulk Meat Packs', 20),
            ('Weekly Specials', 15),
            ('Heating', 30);

        select *
        from departments;
        select *
        from products;