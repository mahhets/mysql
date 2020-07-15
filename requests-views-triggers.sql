use dns;



-- Общая сумма проданных заказов

Select sum(price) from Orders;


-- Имена и номера, получивших заказ по Голубиной почте
select concat(first_name, '  ', last_name) as Покупатели, phone as Номер_телефона, 
Production_method.method as Метод_получения_товара
	from users 
		join Orders on users.id = Orders.user_id 
		join Production_method on Orders.product_method = Production_method.id where Production_method.`method` = "Голубиная почта" 
		and Orders.status = 'доставлен';
	
	
	
-- Имена и должность сотрудников доставки, id и название товара доставки, статус заказа, адрес доставки

select employee.name, employee.`position` as Должность ,products.id, products.head as Название_товара, delivery.address, delivery.status
	from delivery
		left join employee on delivery.employee_number = employee.employee_number
		join Orders on delivery.order_id = Orders.order_id
		join OrderProduct on Orders.order_id = OrderProduct.order_id 
		join products on OrderProduct.product_id = products.id;
	
	
-- Имя сотрудника доставки
-- Всего заказов сотрудника
-- Самый дорогой товар,который отвозил сотрудник
-- Самый дешевый товар, который отвозил сотрудник

	
select distinct employee.name as Имя_сотрудника,
	count(delivery.order_id) over(partition by delivery.employee_number) as Всего_заказов,
	max(Orders.price) over(partition by delivery.employee_number) as Максимальный,
	min(Orders.price) over(partition by delivery.employee_number) as Минимальный
		from employee
			left join delivery on employee.employee_number = delivery.employee_number
			left join Orders on delivery.order_id = Orders.order_id;
		
Select * from Orders;
select * from payment_types;


-- 
-- Представления
-- 
-- 1
create view orders_credit_card as
select order_id, user_id , status, price 
from Orders
	left join payment_types on Orders.payment_type = payment_types.id where payment_types.type = '"Кредитная карта"';


select * from orders_credit_card;


-- 2
create view most_expencive as
select distinct product_id, products.price
	from OrderProduct
		join products on OrderProduct.product_id = products.id where products.price > 50000 order by products.price desc;

		
select * from most_expencive where price > 1000000;
	
-- 
-- Триггеры для примера, запрещающий удалять уже имеющиеся способы оплаты товара
-- 
drop trigger if exists block_delete_payment_types;
delimiter //

create trigger block_delete_payment_types before delete on payment_types
for each row begin
	declare all_row int;
	select count(*) into all_row from payment_types;
	if all_row <= 4 then
		signal sqlstate '54321' set message_text = 'Таблица не подлежит редактированию';
	end if;
end// 

delimiter ;
	







