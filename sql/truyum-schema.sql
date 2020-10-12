create database truyum;
use truyum;

-- creating menu item table
create table menu_item(
menu_item_id varchar(20) primary key,
name varchar(25),
price decimal(5,2),
active enum('Yes','No'),
date_of_launch date,
category varchar(15),
free_delivery enum('Yes','No')
);

-- Creating user and cart tables   (4)
create table user(
user_id varchar(10) primary key,
user_name varchar(25),
role varchar(15)
);

create table cart(
cart_id varchar(10) primary key,
menu_item_id varchar(20),
user_id varchar(10),
constraint fk_menu_id foreign key(menu_item_id) references menu_item(menu_item_id),
constraint fk_user_id foreign key(user_id) references user(user_id)
);