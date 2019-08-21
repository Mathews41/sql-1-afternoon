-- person problem 1
Create Table person
(person_id SERIAL PRIMARY KEY, name varchar(200), age integer, height integer, city varchar(200), favorite_color varchar(200));
-- problem 2
insert into person (name, age, height, city, favorite_color) 
values
('chris', 21, 100, 'phoenix', 'blue')
('gerald', 23, 23, 'mesa', 'green')
('cameron', 12, 144, 'scottsdale', 'yellow')
('harry', 21, 78, 'gilbert', 'purple')
('jake', 26, 134, 'chandler', 'white');
-- problem 3
select * from person order by height desc;
-- problem 4
select * from person order by height asc;

-- problem 5
select * from person order by age desc;
-- problem 6
select * from person where age > 20
-- problem 7
select * from person where age = 18
-- problem 8
select * from person where age < 20 or age > 30
-- problem 9
select * from person where age != 27
-- problem 10
select * from person where favorite_color != 'red'
-- problem 11
select * from person where favorite_color != 'red' and favorite_color != 'blue'
-- problem 12
select * from person where favorite_color = 'orange' or favorite_color = 'green'
-- problem 13
select * from person where favorite_color = 'orange' or favorite_color = 'green' or favorite_color = 'blue'
-- problem 14
select * from person where favorite_color in ('yellow','purple')
-- orders problem 1
create table orders (order_id serial primary key, person_id integer,product_name varchar(100), product_price numeric, quantity integer)

-- orders problem 2
insert into orders (product_name, product_price, quantity) values('shockers', 30,20)  
insert into orders (product_name, product_price, quantity) values('sourpatch', 32,13)                                                                                          
-- orders problem 3
select * from orders
-- orders problem 4
select sum(quantity) from orders
-- orders problem 5
select sum(product_price * quantity) from orders
-- orders problem 6
select sum(product_price * quantity) from orders where person_id = 0;

-- artist problem 1
INSERT INTO artist ( name ) VALUES ( 'artist name' );

-- artist problem 2
SELECT * FROM artist ORDER BY name DESC LIMIT 10;

-- artist problem 3
SELECT * FROM artist ORDER BY name ASC LIMIT 5;

-- artist problem 4
SELECT * FROM artist WHERE name LIKE 'Black%';

-- artist problem 5
SELECT * FROM artist WHERE name LIKE '%Black%';

-- employee problem 1

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

-- employee problem 2
SELECT MAX(birth_date) from employee;

-- employee problem 3
SELECT MIN(birth_date) from employee;

-- employee problem 4
SELECT * FROM employee WHERE reports_to = 2;

-- employee problem 5
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';

-- invoice problem 1
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

-- invoice problem 2
SELECT MAX(total) FROM invoice;

-- invoice problem 3
SELECT MIN(total) FROM invoice;

-- invoice problem 4
SELECT * FROM invoice WHERE total > 5;

-- invoice problem 5
SELECT COUNT(*) FROM invoice WHERE total < 5;

-- invoice problem 6
SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');

-- invoice problem 7
SELECT AVG(total) FROM invoice;

-- invoice problem 8
SELECT SUM(total) FROM invoice;


