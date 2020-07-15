create database dns;


/* 
 * База предназначена для учета товаров,ведения списка заказов, контроля доставки и хранения отзывов о товаре. 
 * Помимо этого она собирает самые необходимые(на самом деле можно еще много чего добавить)
 * данные о пользователях для дальнейшего взаимодейсвия(рассылки о скидках,акциях,распродажах).
 * Полностью переделал структуру БД(это я спрашивал про поиск по дереву и объединение таблиц).В итоге получилась,на мой взгляд,
 * структура, соответствующая реляционной модели. По хорошему, это лишь часть структуры, как скелет.
 * Для первого раза думаю получилось неплохо, но решать Вам.
 * */


use dns;

/*Таблица пользователей*/
create table users (
	id int unsigned not null auto_increment primary key,
	first_name varchar(100) not null,
	last_name varchar(100) comment "по желанию",
	phone varchar(100) not null unique,
	email varchar(100) not null,
	city varchar(150) not null,
	adress varchar(200)
) comment "профили при регистрации";

-- Таблица корзины
create table shopping_cart (
	users_id int unsigned not null primary key,
	products_id int unsigned not null
);

-- Таблица избранного, лайкнутые товары
create table users_favourites (
	user_id int unsigned not null primary key,
	products_id int unsigned not null
);

-- Таблица продуктов продукты
create table products (
	id int unsigned not null auto_increment primary key,
	head varchar(200) not null,
	body text not null,
	pictures varchar(300) not null,
	price decimal not null,
	specifications text not null
);

-- Таблица заказов
create table Orders (
	order_id int unsigned not null auto_increment primary key,
	user_id int unsigned not null,
	created_at datetime default current_timestamp,
	status varchar(50),
	price decimal not null,
	payment_type int unsigned not null,
	product_method int unsigned not null
);


-- Таблица типов платежей
create table payment_types (
	id int unsigned not null  primary key,
	type varchar(150)
);

-- Таблица методов получения товара
create table Production_method (
	id int unsigned not null  primary key,
	method varchar(150)
);

-- Таблица доставки
create table delivery (
	order_id int unsigned not null auto_increment primary key,
	delivery_date datetime,
	address varchar(250) not null,
	cost_of_delivery decimal,
	status varchar(100),
	employee_number int unsigned not null
);

-- Таблица заказ-продукт
create table OrderProduct (
	order_id int unsigned not null primary key,
	product_id int unsigned not null
);

-- Таблица работников доставки
create table employee (
	employee_number int unsigned not null auto_increment primary key,
	name varchar(200) not null,
	phone varchar(70) not null,
	position varchar (100) not null
);

-- Таблица отзывов на продукт
create table product_reviews (
	product_id int unsigned not null,
	user_id int unsigned not null,
	comment varchar(600) not null,
	reviews varchar(600)
);





-- 
-- Связи
-- 

-- shopping cart references
ALTER TABLE shopping_cart ADD CONSTRAINT user_id_fk FOREIGN KEY (users_id) REFERENCES users(id);
ALTER TABLE shopping_cart ADD CONSTRAINT product_id_fk FOREIGN KEY (products_id) REFERENCES products(id);

-- users_favourites references
ALTER TABLE users_favourites ADD CONSTRAINT user_favour_id_fk FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE users_favourites ADD CONSTRAINT product_favour_id_fk FOREIGN KEY (products_id) REFERENCES products(id);

-- 

-- Orders references
alter table Orders add constraint orders_to_users_id_fk foreign key (user_id) references users(id);
alter table Orders add constraint orders_to_payment_type_id_fk foreign key (payment_type) references payment_types(id);
alter table Orders add constraint orders_to_product_method_id_fk foreign key (product_method) references Production_method(id);
alter table Orders add constraint orders_to_OrderProduct_fk foreign key (order_id) references OrderProduct(order_id);

-- Доставка

alter table delivery add constraint delivery_to_order_fk foreign key (order_id) references Orders(order_id);
alter table delivery add constraint delivery_to_employee_fk foreign key (employee_number) references employee(employee_number);

-- OrderProduct

alter table OrderProduct add constraint OP_to_products_fk foreign key (product_id) references products(id);

-- products_reviews 

alter table product_reviews add constraint reviews_to_prodeucts_id_fk foreign key (product_id) references products(id);
alter table product_reviews add constraint reviews_to_users_id_fk foreign key (user_id) references users(id);



-- 
-- Индексы
-- 

create index user_phone_idk on users(phone);
create index user_email_idx on users(email);
create index products_price_idx on products(price);







