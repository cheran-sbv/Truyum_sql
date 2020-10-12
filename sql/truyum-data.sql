use truyum;

-- Inserting into menu item table  (1 a)
insert into menu_item values('mi01','Sandwitch',99.00,'Yes','2017-03-15','Main Course','Yes');
insert into menu_item values('mi02','Burger',129.00,'Yes','2017-12-23','Main Course','No');
insert into menu_item values('mi03','Pizza',149.00,'Yes','2017-08-21','Main Course','No');
insert into menu_item values('mi04','French Fries',57.00,'No','2017-07-02','Starters','Yes');
insert into menu_item values('mi05','Chocholate Brownie',32.00,'Yes','2022-07-02','Dessert','Yes');


-- Display Table in menu_item_list_admin (1 b)
select name,price,active,date_of_launch,category,free_delivery from menu_item
order by date_of_launch;

-- Display Table in Menu_item_list_customer (2 a)
select name,free_delivery,price,category from menu_item
where active='yes' and date_of_launch<(select curdate());

-- SQL query to get a menu items based on Menu Item Id  (3 a)
select name,price,active,date_of_launch,category,free_delivery from menu_item
where menu_item_id='mi03';

-- update SQL menu_item table to update all the columns values based on Menu Item Id  (3 b)
update menu_item set name='',price='',active='',date_of_launch='',category='',free_delivery=''
where menu_item_id='';


-- insert into user and cart table  (4  a)
-- user
insert into user value('u01','john','admin');
insert into user value('u02','joe','cust');

select*from user;

-- cart
insert into cart values('ct01','mi01','u02');
insert into cart values('ct02','mi03','u02');
insert into cart values('ct03','mi04','u02');

select*from cart;


-- display in cart.html      (5  a)
select m.name,m.Free_delivery,m.price from menu_item m
inner join cart c on c.menu_item_id=m.menu_item_id
where c.user_id='u02';

-- total price in cart       (5  b)
select sum(m.price) from menu_item m
inner join cart c on c.menu_item_id=m.menu_item_id
where c.user_id='u02';

-- delete from cart           (6  a)
delete from cart where cart_id='ct01' and user_id='u02';



