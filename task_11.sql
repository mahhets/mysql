
/* 1. создайте таблицу logs типа archive. пусть при каждом создании записи в таблицах users, 
catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, 
идентификатор первичного ключа и содержимое поля name. */

use shop;

drop table if exists logs;
create table logs (
  table_id int,
  table_name varchar(20),
  name varchar(255),
  created_ad timestamp
  
) comment = 'logs' engine=archive;

delimiter //
create procedure write_log(in table_id int, table_name varchar(20), name varchar(255))
begin
    insert into logs(table_id, table_name, name, created_ad) values (table_id, table_name, name, now());
end//

drop trigger if exists users_log//
create trigger users_log after insert on users
for each row
begin
    call write_log(new.id, "users", new.name);
end//

drop trigger if exists catalogs_log//
create trigger catalogs_log after insert on catalogs
for each row
begin
    call write_log(new.id, "catalogs", new.name);
end//

drop trigger if exists products_log//
create trigger products_log after insert on products
for each row
begin
    call write_log(new.id, "products", new.name);
end//

delimiter ;


insert into users (name) values ('mahhets');
insert into catalogs (name) values ('books');
insert into products (name) values ('smartphone');

select * from logs;

/* 2. (по желанию) создайте sql-запрос, который помещает в таблицу users миллион записей. */
delimiter //
drop procedure if exists ins_manyval//
create procedure ins_manyval(in q int)
begin
    declare i int default 0;
    
    while i < q do
	insert into users (name) values (concat('user', i));
        set i = i + 1;
    end while;
    
end//

call ins_manyval(1000000)// -- выдает ошибку :)







-- NoSQL
/* В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов. */ 

hset counters '192.168.0.1' 3

hset counters '192.168.0.2' 2

hset counters '192.168.0.3' 5

hgetall counters






