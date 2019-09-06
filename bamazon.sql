
-- creates the database and the table products 
create database bamazon;
create table products
(
    -- the characteristics of all the fields in the products table
    id int not null
    auto_increment,
product_name varchar
    (50),
department_name varchar
    (50),
price int,
stock_quantity int,
primary key
    (id)

);
    --populates the initial retail
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
    --adds the produc_sales field for part 3
    ALTER TABLE products ADD COLUMN product_sales int;
    --populates the department table with name and dummy value for overhead
    INSERT INTO departments
        (department_name, overhead)
    values
        ('Barbeques', 50),
        ('BBQ Pantry', 60),
        ('Bulk Meat Packs', 20),
        ('Weekly Specials', 15),
        ('Heating', 30);
    --creates the departments table for part 3
    CREATE TABLE departments
    (
        department_id int not null
        auto_increment,
  department_name varchar
        (50),
  overhead int,
  primary key
        (department_id));
        select *
        from departments;
        select *
        from products;