-- 1. Переместить id = i из shop.users в sample.users

use shop;


start transaction;
insert into sample.users
select * from shop.users where id = 1;
delete from shop.users where id = 1;

commit;

select * from shop.users;
select * from sample.users;

-- 2. Cоздайте представление, которое выводит название name товарной позиции из таблицы products 
-- и соответствующее название каталога name из таблицы catalogs.

create view prod_description as select products.name as product, catalogs.name as catalog from products
left join catalogs on products.catalog_id = catalogs.id;

select * from prod_description;



