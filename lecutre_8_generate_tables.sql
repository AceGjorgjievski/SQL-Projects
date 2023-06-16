-- "Осврт кон предавање 8: Вовед во SQL - DML, Напреден SQL"
-- Use this code to practice the queries :)
-- *if you spot some errors, please let me know to correct it.

create table Salesman (
    salesman_id NUMBER(5),
    name varchar(10),
    city varchar(10),
    commission float,

    PRIMARY KEY (salesman_id)
);

insert into Salesman values (5001,'James Hoog', 'New York', 0.15);
insert into Salesman values (5002,'Nail Knite', 'Paris', 0.13);
insert into Salesman values (5005,'Pit Alex', 'London', 0.11);
insert into Salesman values (5006,'Mc Lyon', 'Paris', 0.14);
insert into Salesman values (5003,'Lauson Hense', null, 0.12);
insert into Salesman values (5007,'Paul Adam', 'Rome', 0.13);


create table Customer (
    customer_id NUMBER(5),
    cust_name varchar(10),
    city varchar(10),
    grade varchar(5),
    salesman_id number(5),

    PRIMARY KEY (customer_id),
    foreign key (salesman_id) references Salesman(salesman_id)
);

insert into Customer values (3002,'Nick Rimando', 'New York', '100', 5001);
insert into Customer values (3005,'Graham Zusi', 'California', '200', 5002);
insert into Customer values (3004,'Fabian Johnson', 'Paris', '300', 5006);
insert into Customer values (3007,'Brad Davis', 'New York', '200', 5001);
insert into Customer values (3009,'Geoff Cameron', 'Berlin', '100', 5003);
insert into Customer values (3008,'Julian Green', 'London', '300', 5002);
insert into Customer values (3003,'Jozy Altidore', 'Moscow', '200', 5007);
insert into Customer values (3001,'Brad Guzan', 'London',null, 5005);


create table Orders(
    order_no NUMBER(5),
    purch_amt REAL,
    ord_date DATE,
    customer_id NUMBER(5),
    salesman_id NUMBER(5),

    PRIMARY KEY (order_no),
    foreign key (customer_id) references Customer(customer_id),
    foreign key (salesman_id) references Customer(salesman_id)
);

insert into Orders values (70001,150.50,'2012-10-05',3005,5002);
insert into Orders values (70009,270.65,'2012-09-10',3001,5005);
insert into Orders values (70002,65.26,'2012-10-05',3002,5001);
insert into Orders values (70004,110.50,'2012-08-17',3009,5003);
insert into Orders values (70007,948.50,'2012-09-10',3005,5002);
insert into Orders values (70005,2400.60,'2012-07-27',3007,5001);
insert into Orders values (70008,5760.00,'2012-09-10',3002,5001);
insert into Orders values (70010,1983.43,'2012-10-10',3004,5006);
insert into Orders values (70003,2480.40,'2012-10-10',3009,5003);
insert into Orders values (70012,250.45,'2012-06-27',3008,5002);
insert into Orders values (70011,75.29,'2012-08-17',3003,5007);
insert into Orders values (70013,3045.60,'2012-04-25',3002,5001);