create table customers
(
    id           int primary key auto_increment,
    name         varchar(250) not null,
    surname      varchar(250) not null,
    age          int check ( age > -1 ),
    phone_number long         not null
);

create table orders
(
    id           int primary key auto_increment,
    date         timestamp default now() not null,
    customer_id  int                     not null,
    product_name varchar(250)            not null,
    amount       int                     not null,
    foreign key (customer_id) references customers (id)
);