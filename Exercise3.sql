-- creating salesman table

create table salesman(
	salesman_id int primary key not null,
    name varchar(30) not null,
    city varchar(30) not null,
    commission float not null
);

select * from salesman;

insert into salesman(salesman_id,name,city,commission) VALUES
(5001,"James Hoog","New York",0.15),
(5002,"Nail Knite","Paris",0.13),
(5005,"Pit Alex","London",0.11),
(5006,"Mc Lyon","Paris",0.14),
(5007,"Paul Adam","Rome",0.13),
(5003,"Lauson Hen","San Jose",0.12);


-- creating customer table

create table customer(
	customer_id int primary key not null,
    cust_name varchar(30) not null,
    city varchar(30) not null,
    grade int not null,
    salesman_id int not null,
    foreign key(salesman_id)references salesman(salesman_id)
);

select * from customer;

insert into  customer(customer_id,cust_name,city,grade,salesman_id) values
(3002,"Nick Rimando","New York",100,5001),
(3007,"Brad Davis","New York",200 ,5001),
(3005,"Graham Zusi ","California",200 ,5002),
(3008,"Julian Green","London",300,5002),
(3004,"Fabian Johnson","Paris",300,5006),
(3009,"Geoff Cameron","Berlin",100,5003),
(3003,"Jozy Altidor","Moscow",200,5007),
(3001,"Brad Guzan","London",0,5005);

-- Write a SQL query to find those customers with a grade less than 100. It should return cust_name, customer city, grade, salesman, and salesman city.
-- The result should be ordered by ascending customer_id.

select c.cust_name as cust_name, c.city ascustomer_city, c.grade as grade, s.name as salesman, s.city as salesman_city from customer c, salesman s
where c.grade < 100 and c.salesman_id = s.salesman_id 
order by customer_id;


