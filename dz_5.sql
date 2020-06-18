-- 5.1.1

CREATE TABLE users_test (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME,
  updated_at DATETIME 
) COMMENT = 'Покупатели';

INSERT INTO users_test (name, birthday_at, created_at, updated_at) VALUES
  ('Lex', '1983-12-07', null, null),
  ('Mike', '1984-08-12', null, null),
  ('Iggy', '1970-04-21', null, null),
  ('Mary', '1990-02-14', null, null),
  ('Jonn', '1993-01-12', null, null),
  ('Max', '1987-10-29', null, null);
  
UPDATE users_test SET created_at = NOW(), updated_at = NOW();

SELECT * FROM users_test;

-- 5.1.2

DROP TABLE users_test;

CREATE TABLE users_test (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255),
  updated_at VARCHAR(255)) 

INSERT INTO users_test (name, birthday_at, created_at, updated_at) VALUES
  ('Lex', '1983-12-07', '07.01.2016 12:05', '24.06.2020 14:47'),
  ('Mike', '1984-08-12', '07.01.2016 12:05', '24.06.2020 14:47'),
  ('Iggy', '1970-04-21', '07.01.2016 12:05', '24.06.2020 14:47'),
  ('Mary', '1990-02-14', '07.01.2016 12:05', '24.06.2020 14:47'),
  ('Jonn', '1993-01-12', '07.01.2016 12:05', '24.06.2020 14:47'),
  ('Max', '1987-10-29', '07.01.2016 12:05', '24.06.2020 14:47');

Update users_test SET created_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i'),
	updated_at = STR_TO_DATE(created_at, '%d.%m.%Y %k:%i');

ALTER TABLE users CHANGE created_at created_at DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE users CHANGE updated_at updated_at DATETIME DEFAULT CURRENT_TIMESTAMP;

-- 5.1.3

CREATE TABLE storehouses_products (
	id SERIAL PRIMARY KEY,
	storehouse_id INT UNSIGNED,
	product_id INT UNSIGNED,
	value INT UNSIGNED,
	cteated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP);

INSERT INTO storehouses_products(storehouse_id, product_id, value) VALUES (
	(1,687,0),
	(1,582,2500),
	(1,946,0),
	(1,365,30),
	(1,346,500),
	(1,568,1));

SELECT * FROM storehouse_products ORDER BY value;

SELECT id, value, IF(value > 0, 0, 1) AS sort FROM storehouses_products ORDER BY value;

SELECT * FROM storehouses_products ORDER BY IF(value > 0, 0, 1), value;



	

-- 5.2.1

SELECT TIMESTAMPDIFF( YEAR, birthday_at, NOW()) AS age FROM users_test;

SELECT AVG(TIMESTAMPDIFF( YEAR, birthday_at, NOW())) AS age FROM users_test;

-- 5.2.2

SELECT name, birthday_at FROM users_test;

SELECT MONTH(birthday_at), DAY(birthday_at) FROM users_test;

SELECT YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at) FROM users_test;

SELECT DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))) AS day FROM users_test;

SELECT DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day FROM users_test;

SELECT DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day FROM users_test GROUP BY day;

SELECT DATE_FORMAT(DATE(CONCAT_WS('-', YEAR(NOW()), MONTH(birthday_at), DAY(birthday_at))), '%W') AS day,
	COUNT(*) AS total FROM users_test GROUP BY day;









 
