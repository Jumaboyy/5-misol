DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS products;

CREATE TABLE IF NOT EXISTS categories(
	categories_id SERIAL PRIMARY KEY,
	categories_name VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS products(
	products_id SERIAL PRIMARY KEY,
	products_name VARCHAR(50),
	categories_id INTEGER REFERENCES categories(categories_id)
);


INSERT INTO categories(categories_name) VALUES
('Electronic Devices'),
('Clothing'),
('Books'),
('Home Appliances'),
('Sporting Goods');

INSERT INTO products(products_name, categories_id) VALUES
('Smartphone', 1),
('Laptop', 1),
('T-shirt', 2),
('Jeans', 2),
('Novel', 3),
('Textbook', 3),
('Refrigerator', 4),
('Washing Machine', 4),
('Football', 5),
('Basketball', 5),
('Tablet', NULL),
('Sneakers', NULL),
('Cookware Set', NULL),
('Television', NULL),
('Headphones', NULL);



SELECT products.products_name, categories.categories_name 
FROM products JOIN categories ON categories.categories_id = products.categories_id;

SELECT products.products_name, categories.categories_name 
FROM products LEFT JOIN categories ON categories.categories_id = products.categories_id;

SELECT products.products_name, categories.categories_name 
FROM products RIGHT JOIN categories ON categories.categories_id = products.categories_id;

SELECT * FROM products LEFT JOIN categories USING(categories_id) WHERE products.categories_id IS NULL;

SELECT * FROM products RIGHT JOIN categories USING(categories_id) WHERE products.categories_id IS NULL;

SELECT * FROM products JOIN categories USING(categories_id);

SELECT * FROM products FULL JOIN categories USING(categories_id) WHERE products.categories_id IS NULL
OR categories.categories_id IS NULL;














