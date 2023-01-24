-- Croffle and Coffee Cafe
-- 5 Tables
-- 1 Fact , 4 Dimentions
-- PK and FK
-- 3 queries and 1 subquery / with

--4 Dimention Tables--
create table customer
(customer_id INT primary key,
 name text,
 gender text,
 country text,
 email text
);

insert into customer values
(1,'Mhai','Female','Thailand','Mhai@hotmail.com'),
(2, 'Mhew', 'Female', 'Thailand', 'Mhew@hotmail.com'),
(3, 'Kenta', 'Male', 'Japan','Kenta@gmail.com'),
(4, 'David', 'Male', 'England', 'David@gmail.com'),
(5, 'Sandy', 'Female', 'Austria','Sandy@gmail.com'),
(6, 'Arm', 'Male', 'Japan', 'Arm@hotmail.com'),
(7, 'James', 'Male', 'Austria','James@gmail.com'),
(8, 'Marry', 'Female','Austria', 'Marry@hotmail.com');

create table menu
(menu_id INT primary key,
 menu_name text,
 menu_price text
);

insert into menu values
(1,'Original Croffle', '50'),
(2, 'Kitkat Croffle', '80'),
(3, 'Strawberry Croffle', '90'),
(4, 'Nutella Croffle' , '100'),
(5, 'Americano', '50'),
(6, 'Cappuccino', '60'),
(7, 'Latte', '60'),
(8, 'Espresso', '50'),
(9, 'Mocha', '60'),
(10, 'Macchiato', '60');

create table employee
(employee_id INT primary key,
 employee_name text,
 brance_name text
);

insert into employee values
(1, 'May', 'Thailand'),
(2, 'Matoom', 'Thailand'),
(3, 'Marry', 'England'),
(4, 'John', 'England'),
(5, 'Yoko', 'Japan'),
(6, 'Toto', 'Japan'),
(7, 'Susan', 'Austria'),
(8, 'Jane', 'Austria');

create table branch
(branch_id INT primary key,
 branch_name text
);

insert into branch values
(1, 'Thailand'),
(2, 'Japan'),
(3, 'Austria'),
(4, 'England');

create table orders
(order_id INT primary key,
 order_date date,
 customer_id INT,
 menu_id INT,
 total_amount int,
 branch_id int,
 employee_id,

 foreign key (customer_id) references customer(customer_id),
 foreign key (menu_id) references menu(Menu_id),
 foreign key (branch_id) references branch(branch_id),
 foreign key (employee_id) references employee(employee_id)
);

insert into orders values
(1, '2022-05-02', 1, 1,80,1,2),
(2, '2022-05-03', 1, 1,50,1,1),
(3, '2021-02-10', 3, 3,90,2,5),
(4, '2021-02-15', 4, 5,50,2,6),
(5, '2021-03-30', 5, 6,60,3,7),
(6, '2021-03-31', 6, 9,60,3,8),
(7, '2021-04-22', 7, 10,60,4,3),
(8, '2021-04-29', 8, 4,100,4,4),
(9, '2022-05-02', 2, 7,60,1,2),
(10, '2022-05-10', 1, 1,50,1,2);

--SQLite Command
.mode column
.header on

 --4 SQL Queries
SELECT name, menu_name, sum(total_amount) as price
from Orders
JOIN menu on Orders.menu_id = menu.menu_id
JOIN customer on Orders.customer_id = customer.customer_id
group by menu_name
order by price DESC;

SELECT branch_name, sum(total_amount) as price
from Orders
JOIN branch on Orders.branch_id = branch.branch_id
group by branch_name
order by price DESC;

SELECT menu_name, sum(menu_price) as price
from Orders
join menu on Orders.menu_id = menu.menu_id
group by menu_name
order by price DESC
LIMIT 5;

SELECT * from (SELECT branch_name, sum(total_amount) as price,strftime('%Y', order_date) as year
from Orders
JOIN branch on Orders.branch_id = branch.branch_id
group by branch_name
order by price DESC
LIMIT 3);