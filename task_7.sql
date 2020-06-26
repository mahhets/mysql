-- Как и обещал, доделал задания урока 6	
-- 6.4 - Подсчитать общее кол-во лайков самым молодым пользователям с лимитом 10 человек

select sum(likes) from (
	select profiles.user_id, profiles.birthday, count(likes.target_id) as likes 
		from profiles
			join likes on likes.target_id = profiles.user_id
		group by profiles.user_id, profiles.birthday 
		order by profiles.birthday desc limit 10) as count_likes;
	
-- 6.5 10 пользователей с наименьшей активностью

select concat(users.id,'  -  ', users.first_name, ' ', users.last_name) as user_id, count(media.user_id) + count(likes.target_id) + count(messages.from_user_id) as active_count
	from users
		left join media on users.id = media.user_id 
		left join likes on users.id = likes.target_id 
		left join messages on users.id = messages.from_user_id
group by user_id order by active_count limit 10;



-- Урок 7 
-- 7.1 Список users, который осуществили хотя бы один заказ в магазине


insert into orders (user_id)
select id from users where name = 'александр';

insert into orders_products (order_id, product_id, total)
select last_insert_id(), id, 3 from products
where name = 'gigabyte h310m s2';

insert into orders (user_id)
select id from users where name = 'сергей';

insert into orders_products (order_id, product_id, total)
select last_insert_id(), id, 1 from products
where name in ('intel core i3-8100', 'amd fx-8320e');

insert into orders (user_id)
select id from users where name = 'геннадий';

insert into orders_products (order_id, product_id, total)
select last_insert_id(), id, 2 from products
where name = 'intel core i5-7400';

insert into orders (user_id)
select id from users where name = 'наталья';

insert into orders_products (order_id, product_id, total)
select last_insert_id(), id, 1 from products
where name in ('intel core i5-7400', 'gigabyte h310m s2h');


select distinct user_id from orders;

select 
id, name, birthday_at from users
where id in (select distinct user_id from orders);


-- 7.2 Список товаров и разделов, который соответствует товару.

select products.id, products.name, products.price, catalogs.name as catalog
from products as p
	left join catalogs as c
		on p.catalog_id = c.id;

