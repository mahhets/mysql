use shop;

-- 1. Cоздайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
-- с 6:00 до 12:00 функция должна возвращать фразу "доброе утро", 
-- с 12:00 до 18:00 функция должна возвращать фразу "добрый день", 
-- с 18:00 до 00:00 — "добрый вечер", с 00:00 до 6:00 — "доброй ночи"

drop function if exists hello;

delimiter //
create function hello()
returns text deterministic
begin
	declare h int default hour(now());    
	case
		when h between 6 and 11  then
			return 'доброе утро';
		when h between 12 and 17  then
			return 'добрый день';
		when h between 18 and 23  then
			return 'добрый вечер';
		else
			return 'доброй ночи';
  end case;
end//
delimiter ;

select hello();

-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием. 
-- допустимо присутствие обоих полей или одно из них. ситуация, когда оба поля принимают неопределенное значение null 
-- неприемлема. используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. 
-- при попытке присвоить полям null-значение необходимо отменить операцию

select * from products;

delimiter //
drop trigger if exists name_descr_ctr_insert//

create trigger name_descr_ctr_insert before insert on products
for each row
begin
    if new.name is null and new.description is null then
		signal sqlstate '45000' set message_text = 'both name and descr cannot be null';
	end if;
end//

insert into products (name, description) values (null, null)//

drop trigger if exists name_descr_ctr_update//
create trigger name_descr_ctr_update before update on products
for each row
begin
    if new.name is null and new.description is null then
		signal sqlstate '45000' set message_text = 'both name and descr cannot be null';
	end if;
end//
