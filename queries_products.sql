-- Comments in SQL Start with dash-dash --
-- 1. Add a product to the table with the name of “chair”, price of 44.00, and can_be_returned of false.

-- products_db=# insert into products (name, price, can_be_returned)
-- products_db-# values ('chair', '44.00', false);
-- INSERT 0 1

-- 2. Add a product to the table with the name of “stool”, price of 25.99, and can_be_returned of true.

-- products_db=# INSERT INTO products (name, price, can_be_returned) values ('stool', '25.99', true);
-- INSERT 0 1

-- 3. Add a product to the table with the name of “table”, price of 124.00, and can_be_returned of false.

-- products_db=# INSERT INTO products (name, price, can_be_returned) values ('table', '124.00', false);
-- INSERT 0 1

-- 4. Display all of the rows and columns in the table.

-- select * from products;

-- 5. Display all of the names of the products.

-- select name from products;

-- 6. Display all of the names and prices of the products.

-- select name, price from products;

-- 7. Add a new product - make up whatever you would like!

-- products_db=# INSERT INTO products (name, price, can_be_returned) values ('banana', '1024.00', false);

-- 8. Display only the products that can_be_returned.

-- products_db=# select can_be_returned from products where can_be_returned = true;

-- 9. Display only the products that have a price less than 44.00.

-- select price AS price_below_44 from products where price <= 44.00;

-- 10. Display only the products that have a price in between 22.50 and 99.99.

-- SELECT price FROM products WHERE price BETWEEN 22.50 AND 44.00;

-- 11. There’s a sale going on: Everything is $20 off! Update the database accordingly.

-- products_db=# UPDATE products SET price = price - 20.00;

-- 12. Because of the sale, everything that costs less than $25 has sold out. Remove all products whose price meets this criteria.

-- products_db=# DELETE FROM products WHERE price < 25;

-- 13. And now the sale is over. For the remaining products, increase their price by $20.

-- products_db=# UPDATE products SET price = price + 20.00;

-- 14. There is a new company policy: everything is returnable. Update the database accordingly.

-- UPDATE products SET can_be_returned = true;