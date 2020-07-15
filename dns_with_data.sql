use dns;

#
# TABLE STRUCTURE FOR: OrderProduct
#

DROP TABLE IF EXISTS `OrderProduct`;

CREATE TABLE `OrderProduct` (
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (1, 15);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (2, 29);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (3, 41);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (4, 14);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (5, 29);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (6, 28);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (7, 5);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (8, 7);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (9, 47);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (10, 25);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (11, 51);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (12, 49);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (13, 36);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (14, 35);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (15, 29);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (16, 13);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (17, 55);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (18, 43);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (19, 52);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (20, 51);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (21, 2);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (22, 11);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (23, 3);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (24, 38);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (25, 34);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (26, 56);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (27, 33);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (28, 40);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (29, 16);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (30, 3);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (31, 58);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (32, 22);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (33, 50);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (34, 5);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (35, 27);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (36, 16);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (37, 41);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (38, 28);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (39, 19);
INSERT INTO `OrderProduct` (`order_id`, `product_id`) VALUES (40, 12);


#
# TABLE STRUCTURE FOR: Orders
#

DROP TABLE IF EXISTS `Orders`;

CREATE TABLE `Orders` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,0) NOT NULL,
  `payment_type` int(10) unsigned NOT NULL,
  `product_method` int(10) unsigned NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (1, 38, '2004-10-04 10:38:21', 'передан в службу доставки', '35746', 1, 3);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (2, 41, '1998-05-12 01:48:17', 'доставлен', '49490', 3, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (3, 24, '1994-06-07 21:18:07', 'сборка', '16557', 4, 3);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (4, 67, '1984-08-21 03:18:04', 'передан в службу доставки', '65631', 3, 2);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (5, 8, '2007-03-03 21:17:34', 'передан в службу доставки', '100939', 4, 1);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (6, 49, '1974-04-08 17:12:27', 'передан в службу доставки', '53195', 2, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (7, 53, '1989-04-14 19:32:31', 'доставлен', '28906', 3, 2);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (8, 31, '2011-05-02 11:38:45', 'сборка', '95430', 4, 2);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (9, 24, '1978-09-22 21:34:21', 'сборка', '81083', 2, 2);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (10, 35, '2013-03-17 00:44:02', 'сборка', '71154', 2, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (11, 42, '1997-12-12 13:26:31', 'доставлен', '11119', 1, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (12, 21, '2010-06-07 06:53:00', 'сборка', '97223', 1, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (13, 61, '1981-08-27 14:18:01', 'сборка', '69508', 2, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (14, 34, '1992-09-07 08:32:01', 'доставлен', '78467', 2, 1);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (15, 45, '1980-10-28 17:23:24', 'сборка', '69614', 1, 3);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (16, 15, '2015-10-31 11:09:50', 'доставлен', '20063', 2, 3);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (17, 33, '1973-09-23 18:48:45', 'доставлен', '9838', 3, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (18, 12, '2011-11-16 03:58:55', 'сборка', '19710', 1, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (19, 15, '1995-08-22 20:05:47', 'передан в службу доставки', '72066', 3, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (20, 62, '1972-08-23 05:01:41', 'сборка', '70372', 1, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (21, 68, '1976-01-05 10:30:18', 'передан в службу доставки', '26144', 3, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (22, 12, '1998-08-20 03:05:04', 'сборка', '62833', 1, 2);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (23, 25, '1988-09-19 20:48:18', 'доставлен', '50036', 4, 2);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (24, 43, '1978-12-30 00:21:17', 'сборка', '58750', 2, 3);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (25, 67, '1985-07-31 13:22:50', 'передан в службу доставки', '55524', 2, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (26, 33, '2002-03-25 15:39:16', 'сборка', '95950', 1, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (27, 51, '1985-01-06 00:03:24', 'доставлен', '52730', 4, 4);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (28, 42, '2014-11-13 19:50:59', 'передан в службу доставки', '15377', 3, 3);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (29, 21, '1995-07-15 03:25:14', 'доставлен', '69932', 3, 1);
INSERT INTO `Orders` (`order_id`, `user_id`, `created_at`, `status`, `price`, `payment_type`, `product_method`) VALUES (30, 27, '1989-01-01 21:10:13', 'доставлен', '58951', 3, 4);


#
# TABLE STRUCTURE FOR: Production_method
#

DROP TABLE IF EXISTS `Production_method`;

CREATE TABLE `Production_method` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `method` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Production_method` (`id`, `method`) VALUES (1, 'Почтомат');
INSERT INTO `Production_method` (`id`, `method`) VALUES (2, 'Доставка курьером');
INSERT INTO `Production_method` (`id`, `method`) VALUES (3, 'Самовывоз');
INSERT INTO `Production_method` (`id`, `method`) VALUES (4, 'Голубиная почта');



#
# TABLE STRUCTURE FOR: delivery
#

DROP TABLE IF EXISTS `delivery`;

CREATE TABLE `delivery` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_date` datetime DEFAULT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cost_of_delivery` decimal(10,0) DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `employee_number` int(10) unsigned NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (1, '2014-12-17 15:55:48', '965 Farrell Lakes\nWest Victoriaview, KS 18528', '93475', 'передан в службу доставки', 3);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (2, '1976-07-09 16:58:02', '733 Guadalupe Stravenue Suite 743\nSalliechester, WY 45609-9143', '14895', 'сборка', 4);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (3, '2019-07-31 05:15:10', '6716 Geovany Neck Apt. 656\nNorth Glennashire, KS 27571-3474', '47424', 'доставлен', 3);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (4, '2005-04-06 17:44:08', '5025 Dejon Pass\nDeondreside, TN 86000-1338', '29879', 'доставлен', 4);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (5, '2010-03-30 12:19:25', '330 Kovacek Haven Suite 015\nPort Kianna, SC 58910', '86718', 'сборка', 3);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (6, '1973-04-14 02:31:59', '311 Sauer Trace\nLake Camden, MD 74469', '27711', 'передан в службу доставки', 5);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (7, '1971-11-19 22:31:45', '8077 Katherine Bridge\nGracielaland, CO 65414', '49538', 'передан в службу доставки', 5);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (8, '1986-11-23 01:12:02', '69211 Mayert Mission\nAmandamouth, SC 80364-7096', '45574', 'передан в службу доставки', 3);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (9, '2016-09-18 03:50:34', '908 Morar Path Suite 733\nAdamsmouth, WI 57686-7375', '59713', 'передан в службу доставки', 1);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (10, '1975-06-03 16:50:38', '092 Vandervort Points\nCamillemouth, MS 73486', '20156', 'передан в службу доставки', 3);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (11, '1984-07-14 13:41:42', '61694 Heidenreich Well\nNorth Christy, ND 12081-7050', '101452', 'сборка', 5);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (12, '1983-04-01 14:16:12', '5120 Dietrich Course\nWest Jeffery, WY 96407', '14446', 'доставлен', 2);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (13, '1978-05-16 17:52:45', '712 Steuber Square Apt. 887\nBuckridgefort, NM 39169-3999', '30243', 'передан в службу доставки', 3);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (14, '1970-08-11 22:44:21', '843 Loraine Drive Apt. 266\nPort Darianaport, TX 77925-8473', '71657', 'передан в службу доставки', 2);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (15, '2017-08-06 00:15:35', '36136 Fausto Crossroad Suite 454\nBaileystad, KY 99429-2709', '29195', 'сборка', 3);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (16, '1983-05-26 18:25:12', '147 Bechtelar Rest Suite 155\nEast Jordynburgh, DC 06936', '18894', 'сборка', 2);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (17, '1993-06-27 00:26:15', '270 Weimann Viaduct\nLake Burdettetown, ND 87016', '44938', 'передан в службу доставки', 1);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (18, '1980-10-02 01:12:10', '81487 Tremblay Walks\nPort Jaydamouth, PA 49862-2719', '88014', 'доставлен', 5);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (19, '2008-02-04 12:28:14', '95440 Dickens Rapid Apt. 944\nPort Zena, ME 17184-6198', '53916', 'передан в службу доставки', 5);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (20, '1986-01-07 03:06:26', '79565 Jakubowski Lodge Apt. 175\nNew Danteborough, MI 30186-7567', '76595', 'сборка', 3);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (21, '1999-02-24 14:34:48', '2129 Kaycee Landing Suite 152\nPort Elmorehaven, SD 90078-5891', '105709', 'сборка', 1);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (22, '1979-10-29 18:31:09', '0066 Weber Street\nAndreaneberg, RI 12464', '93709', 'сборка', 5);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (23, '1995-12-01 16:59:59', '6370 Nigel Way\nBeverlyborough, WV 61220-5674', '86451', 'передан в службу доставки', 4);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (24, '1984-10-03 10:18:31', '39593 Murazik Mountain Suite 119\nZboncakview, MN 83351-9645', '31274', 'передан в службу доставки', 5);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (25, '1979-08-11 08:17:44', '079 Daugherty Mountains Suite 910\nVenaport, HI 19081', '97791', 'сборка', 4);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (26, '2014-12-26 00:43:31', '356 Alanis Crest Apt. 045\nNicklaustown, LA 14121', '57003', 'передан в службу доставки', 5);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (27, '2011-04-26 23:10:42', '085 Cormier Prairie\nPort Jaydonmouth, NH 98780', '59687', 'доставлен', 1);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (28, '2013-02-14 15:58:22', '0560 Herminio Highway\nSouth Katharina, MN 33824-4674', '72254', 'доставлен', 1);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (29, '2017-09-19 00:22:06', '217 Rose Flats\nAnikaville, NH 59041', '65335', 'передан в службу доставки', 4);
INSERT INTO `delivery` (`order_id`, `delivery_date`, `address`, `cost_of_delivery`, `status`, `employee_number`) VALUES (30, '2015-09-20 10:35:52', '117 Libbie Port\nEast Pinkiefurt, MD 10122-4215', '58810', 'доставлен', 3);


#
# TABLE STRUCTURE FOR: employee
#

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `employee_number` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`employee_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `employee` (`employee_number`, `name`, `phone`, `position`) VALUES (1, 'Demond Adams DDS', '1-826-654-0954', 'omnis');
INSERT INTO `employee` (`employee_number`, `name`, `phone`, `position`) VALUES (2, 'Naomi Torphy', '217.335.3360x360', 'ab');
INSERT INTO `employee` (`employee_number`, `name`, `phone`, `position`) VALUES (3, 'Enid Anderson', '148.439.8212', 'quo');
INSERT INTO `employee` (`employee_number`, `name`, `phone`, `position`) VALUES (4, 'Winifred Schumm DVM', '(928)139-4028x57689', 'fuga');
INSERT INTO `employee` (`employee_number`, `name`, `phone`, `position`) VALUES (5, 'Presley Windler III', '(789)475-7437x37231', 'aut');


#
# TABLE STRUCTURE FOR: payment_types
#

DROP TABLE IF EXISTS `payment_types`;

CREATE TABLE `payment_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `payment_types` (`id`, `type`) VALUES (1, '\"Кредитная карта\"');
INSERT INTO `payment_types` (`id`, `type`) VALUES (2, '\"QIWI\"');
INSERT INTO `payment_types` (`id`, `type`) VALUES (3, '\"Наличные\"');
INSERT INTO `payment_types` (`id`, `type`) VALUES (4, '\"Pay Pall\'');


#
# TABLE STRUCTURE FOR: product_reviews
#

DROP TABLE IF EXISTS `product_reviews`;

CREATE TABLE `product_reviews` (
  `product_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `comment` varchar(600) COLLATE utf8_unicode_ci NOT NULL,
  `reviews` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (6, 58, 'Sed consequatur ut dolore quae praesentium molestiae iste commodi.', 'Dolores voluptas culpa necessitatibus nisi. Nulla est id a temporibus deserunt vel. Rem molestias unde vero accusantium aut. Laborum aperiam vero repudiandae laboriosam.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (21, 54, 'Officia aliquam vitae quasi non consequuntur.', 'Expedita dolor labore quasi aut. Hic sed rem possimus nobis ut quasi. Id qui illo autem suscipit.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (45, 22, 'Doloremque nesciunt quia ex pariatur.', 'Sint esse doloremque est quia dicta non suscipit. Sunt quasi autem maxime repellendus pariatur non. Iusto omnis sint consequatur asperiores consequatur. Aspernatur dolor quo dolorem doloribus iusto nemo occaecati.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (2, 1, 'Expedita aut esse sit exercitationem et quo laudantium voluptates.', 'Provident qui unde distinctio dolorem dignissimos. Asperiores sed odit sequi magni dolores. Quia voluptas iste quis in ea sapiente.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (33, 6, 'Sed consequatur ut aut commodi sunt repudiandae.', 'Quasi quis praesentium cumque minus et earum. Officia iusto omnis rerum accusantium. Culpa sunt temporibus enim ipsum nemo ipsa.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (16, 17, 'Cum quia aut omnis excepturi consequatur.', 'Voluptatum sed nemo impedit. Assumenda ullam recusandae corporis illo et. Autem commodi tempora ut repellat reiciendis rem in. Molestiae minima et iste magni sapiente.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (10, 55, 'Ipsum autem sit similique praesentium quia nobis facilis quaerat.', 'Ut corporis qui aut quia architecto eos dolores quo. Dolorem culpa reprehenderit impedit assumenda nesciunt. Et voluptates et quis beatae beatae autem autem. Quia sit voluptas iusto omnis fugit possimus.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (25, 64, 'Numquam nostrum excepturi non nihil ut consequuntur.', 'Laudantium ut praesentium ea est rem. Rerum pariatur nam deserunt aliquam.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (37, 38, 'Quos quis blanditiis neque autem sit nostrum.', 'Est minus debitis voluptatem. Non quia qui id enim et eaque earum. Praesentium qui recusandae magni quam.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (9, 9, 'Doloremque consequatur laboriosam dolor sed ut.', 'Modi veritatis quo nesciunt aut omnis sint. Omnis minus molestias necessitatibus repellendus cum. Tempora veritatis consequatur voluptatibus culpa.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (23, 57, 'In autem nobis impedit sed vitae eaque in.', 'Quidem cumque nisi maiores laboriosam aut quo. Rerum in est ea perspiciatis. Beatae tempora velit optio laboriosam recusandae sit asperiores.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (26, 41, 'Atque nulla sunt vel magnam.', 'Accusantium culpa iusto corporis aut modi tenetur suscipit sed. Nihil quia iure expedita ad aut accusantium.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (38, 13, 'Id ipsam ut sit omnis aut optio possimus.', 'Et omnis eum dolores consequatur rerum enim sequi nam. Necessitatibus necessitatibus est voluptatibus dolores earum est. Aliquam repellendus eum facilis numquam.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (40, 14, 'Neque aut reiciendis quia et distinctio voluptatem.', 'Quo omnis et et labore ipsum voluptatibus. Ullam sed rerum illo nulla. Qui nesciunt dicta ducimus voluptas alias sed dolorum cumque.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (49, 27, 'Illo architecto ipsam ut natus nihil et.', 'Vel iure commodi dolorum perspiciatis. Nihil aut saepe in voluptas accusamus omnis maiores. Tempora ut temporibus voluptas et inventore culpa. Est dolorem aliquam dolorem autem reiciendis facere ut reiciendis.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (46, 45, 'Et aut aut vitae ullam qui voluptatem.', 'Repellat qui qui nam porro dolorem inventore esse. Fugit autem adipisci voluptatem omnis esse omnis. Debitis labore voluptatem praesentium similique iusto laudantium sit recusandae.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (20, 12, 'Eaque repellat distinctio autem expedita aut et.', 'Autem fugiat architecto sunt fugit possimus. Velit delectus et sint animi in labore quibusdam. Error est aut saepe debitis voluptatem modi aspernatur. Non cum dolor fugiat at. Dolorem eligendi voluptatem magni vitae asperiores.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (2, 60, 'Ut non eos inventore autem.', 'Labore ut nihil et qui ut qui vel. Voluptas aperiam fuga hic doloribus non est.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (22, 30, 'Omnis et sit distinctio quia omnis.', 'Non ducimus amet non magnam similique accusantium reiciendis. Ratione magnam fuga numquam exercitationem non dolorem omnis. Aut sed rerum et quis vel. Error repudiandae odio quaerat culpa error et sed recusandae.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (2, 27, 'Maiores voluptas et et sed.', 'Beatae corrupti adipisci veritatis impedit ut vel. Consequuntur quos recusandae ut rerum. In et quidem rerum ut autem eius.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (22, 36, 'Impedit accusantium consequuntur dolor voluptatem neque culpa harum vel.', 'Sit consequuntur qui perferendis asperiores quidem rerum alias. Eum fugit deleniti fugiat quia sint expedita. Velit fuga nobis ipsum et eum.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (12, 12, 'Quidem aperiam assumenda commodi temporibus.', 'Nihil aut aut quam provident minima dolorem. Voluptatem non sit quo sunt nihil qui sint. Suscipit saepe cupiditate qui sapiente ducimus dolorum fuga.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (20, 52, 'Dolor voluptatibus laboriosam recusandae minus.', 'Reiciendis mollitia voluptatem nesciunt. Ipsum aut officiis doloribus provident sed corrupti aut. Debitis molestiae ut consequuntur ratione blanditiis vitae ut.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (31, 55, 'Iste commodi illo commodi in et qui.', 'Aliquid sed iusto ratione. Ullam consequatur est adipisci consequatur. Aut soluta laudantium reiciendis voluptatem aut iusto aut. Ut dolorem eaque ut ullam et.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (29, 10, 'Alias voluptate est rerum quo temporibus sunt qui.', 'Non placeat quo minima quis. Aliquam et velit nihil. Doloremque est aut voluptatum delectus eos. Rem odit ab quia non.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (32, 39, 'Nam sed quis blanditiis distinctio praesentium reiciendis nemo.', 'Aut odio qui ad ullam occaecati provident. Aliquid et asperiores cupiditate et dolores enim. Laborum eum culpa cumque vitae placeat occaecati. Tempore veritatis ad incidunt consequatur aspernatur debitis et.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (46, 16, 'Sit dolore eos iure eveniet eius excepturi.', 'Dolores beatae et officia explicabo. Provident debitis est magni aut delectus. Rem incidunt eius numquam autem expedita ipsam qui.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (5, 68, 'Animi sint mollitia omnis.', 'Aut aliquid sapiente delectus aut laudantium accusantium et. Laudantium voluptate modi dolores autem omnis. Officia labore perspiciatis sapiente laboriosam inventore. Itaque repudiandae est magni hic dolorem voluptas.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (15, 36, 'Excepturi nostrum eligendi blanditiis quia est.', 'Debitis perferendis est ex et perspiciatis aliquam alias. Eos corrupti sit eveniet quibusdam reprehenderit rerum. Maxime sed cum magnam ab. Fugiat et at est est sint.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (50, 53, 'Libero maxime explicabo maiores corrupti est maxime quidem.', 'Ut ea amet sint. Deleniti voluptatem vero nesciunt. Aut dolorem dolores impedit et quae autem rerum.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (34, 4, 'Laborum mollitia voluptas eligendi iusto quas eligendi nulla.', 'Enim odit nisi eum eos quod. Ut voluptatem iusto itaque est maiores quia voluptate et. Expedita alias aut autem et voluptatibus eum aut esse. Similique velit eligendi voluptas magnam et alias est.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (40, 34, 'Assumenda saepe cumque optio.', 'Est nostrum assumenda culpa recusandae sapiente ducimus. Delectus nobis nam est excepturi. Fugiat id placeat dicta accusantium rerum.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (49, 8, 'Fugiat rerum excepturi quo in rerum laboriosam quibusdam.', 'Iste et provident ut temporibus officiis repudiandae cumque ducimus. Quia exercitationem consectetur rerum laborum. Aut ut animi dolore non quia. Dignissimos deleniti ipsa quia beatae.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (3, 49, 'Quis placeat veniam deserunt.', 'Ipsum tenetur explicabo quia porro. Cumque culpa est doloribus. Cupiditate voluptatibus iure voluptate cum. Sit aut ducimus distinctio ipsum rerum corrupti.');
INSERT INTO `product_reviews` (`product_id`, `user_id`, `comment`, `reviews`) VALUES (29, 8, 'Velit corporis aut explicabo ea aliquid doloribus facilis.', 'Aut dolorem eos ut vel libero est. Porro consequatur quod veniam qui ea sed perspiciatis. Qui inventore omnis voluptatem sed illo.');


#
# TABLE STRUCTURE FOR: products
#

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `head` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `pictures` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `specifications` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (1, 'sit', 'Sed corrupti est assumenda facere. Et qui soluta aut quia est et. Velit repellendus dicta autem maxime.', 'http://lorempixel.com/640/480/', '2', 'Quidem sunt et inventore sint. Eum itaque et reiciendis aliquid neque. Temporibus qui error laboriosam dignissimos quibusdam. Nam consequatur ea sint suscipit quidem. Soluta dolor vitae quia pariatur distinctio omnis optio ea.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (2, 'magni', 'Modi laudantium voluptatem sit sunt. Consequatur vitae corrupti eveniet. Aut non nihil aperiam consectetur ipsa voluptas quis. Ratione tenetur quaerat sint blanditiis pariatur necessitatibus.', 'http://lorempixel.com/640/480/', '17', 'Et ratione est eius dolores asperiores fuga. Magni aliquam rerum magni soluta. Vero numquam et error eligendi quis ut quia.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (3, 'quisquam', 'Labore corporis laboriosam amet amet illum nihil aspernatur. Voluptatem sed sit accusamus at. Vel esse nihil voluptatibus omnis autem praesentium ea.', 'http://lorempixel.com/640/480/', '5276359', 'Dolor consequatur eveniet iste architecto est voluptatibus eum. Non debitis sed id ullam expedita provident ut. Quia consequatur laboriosam ut consectetur vitae. Aut possimus nihil eius laborum.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (4, 'autem', 'Id consequatur ab pariatur fugit aut ut non. Pariatur expedita dolorem ea blanditiis tempore. Fugit rerum tenetur harum sapiente aut sed. Tempora aut aut odio molestiae accusantium dolorem dolores.', 'http://lorempixel.com/640/480/', '21770', 'Ut tempore repellendus amet sit. Id nisi quia qui. Esse qui voluptatem optio quos vero voluptatem.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (5, 'ut', 'Harum quam incidunt ut enim veritatis consequatur illo. Porro sunt et molestiae consequatur corporis quis. Nemo in consequatur provident natus qui nulla. Accusamus sapiente aspernatur ex. Voluptate earum animi iste doloribus perferendis.', 'http://lorempixel.com/640/480/', '99495', 'Reiciendis quod libero ex sint delectus unde consequatur quia. Tempora sapiente optio delectus quisquam adipisci laborum tenetur. Minus recusandae molestiae nisi est qui aut similique dolorem. Officiis esse fuga expedita dolor impedit. Sed porro et maiores qui error.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (6, 'delectus', 'Tempora assumenda iusto sint occaecati enim. Fugiat quisquam et voluptatem sunt quasi totam. Et et animi deleniti neque. Quasi saepe voluptas eos assumenda impedit perspiciatis. Facere ea reiciendis aperiam odit rerum incidunt eum.', 'http://lorempixel.com/640/480/', '6', 'Consectetur fugiat quia qui aperiam amet praesentium odit cum. Velit accusantium asperiores at doloremque reiciendis laboriosam ipsa. Minima aliquam perferendis in. Voluptas ut nam facere et laboriosam nam nemo.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (7, 'voluptatibus', 'Sed at vel sed dolorum amet earum tempora ut. Quos alias sunt hic velit nihil. Dicta excepturi suscipit atque incidunt dolorem amet sed.', 'http://lorempixel.com/640/480/', '46042', 'Possimus quod tenetur dolorum at tempore. Quia veritatis nemo est qui cumque. Fugiat ratione ad illum provident voluptatem. Sint illo repudiandae magni quasi ea. Nihil enim temporibus vel delectus.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (8, 'consectetur', 'Quia in ullam perspiciatis consequatur. Quisquam incidunt rerum nemo quia ullam. Dolores nulla quo voluptatibus eligendi eligendi. Ut dolores maiores quo rerum.', 'http://lorempixel.com/640/480/', '544679', 'Voluptatem voluptate tempore expedita reprehenderit beatae consectetur ut. Tempore iure velit deserunt ut et quia. Illum architecto praesentium nemo sed delectus.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (9, 'suscipit', 'Voluptate voluptatem distinctio voluptas ratione repudiandae odio. Ex sed distinctio libero asperiores. Repudiandae nemo sequi magnam quia possimus. Similique laboriosam ut est magnam sint.', 'http://lorempixel.com/640/480/', '581035634', 'Velit vel eveniet praesentium repudiandae rerum natus saepe. Quisquam veritatis quos accusamus aut rerum officia blanditiis sunt. Similique maiores impedit occaecati. Labore a reiciendis veritatis quidem temporibus beatae.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (10, 'sapiente', 'Cupiditate id sed est accusamus tempora nihil qui. Et recusandae assumenda quod suscipit. Animi earum recusandae minima aperiam aperiam. Reiciendis illo exercitationem accusantium quod non laboriosam voluptatum.', 'http://lorempixel.com/640/480/', '128', 'Vero iste ut in impedit optio est. Quia assumenda quod optio temporibus. Maxime aut ratione cupiditate.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (11, 'dolor', 'Placeat voluptatem quia dignissimos. Culpa consequatur iste in provident iusto dolorem. Et quo ea modi vitae eveniet.', 'http://lorempixel.com/640/480/', '0', 'Iusto placeat vero voluptas rerum et. Ipsum id corporis eos ipsum molestias accusamus eos consequatur. Aspernatur neque voluptatem sequi velit soluta qui. Odit sit sit numquam et possimus.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (12, 'sunt', 'Quos molestiae in totam itaque. Dignissimos vitae sint laboriosam. Quis esse aut eaque ea omnis iure.', 'http://lorempixel.com/640/480/', '44197869', 'Dolor rem magni dolore sint error ipsum est. Neque magnam veritatis cumque laborum est aperiam vero. Minima et dolor culpa excepturi sit omnis.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (13, 'praesentium', 'Consectetur ea aut ut et at commodi nobis. Et rerum possimus consequuntur consequatur id. Quaerat vero placeat pariatur tempora eum. Laudantium iste ab vero omnis mollitia velit sint voluptatem.', 'http://lorempixel.com/640/480/', '989', 'Ea quibusdam libero omnis ut et. Quae velit magnam beatae sunt. Consequatur expedita velit quos sit. Voluptas esse qui eos et architecto.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (14, 'blanditiis', 'Dolorem aperiam molestiae qui odit voluptatem. Accusantium dolor ipsa repellat eum laudantium et. Aut quidem rerum facilis quis at ad.', 'http://lorempixel.com/640/480/', '7107', 'Cupiditate accusamus sit nam. Eum omnis et in. Vero ipsam est qui consequuntur consequatur et corporis rerum.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (15, 'labore', 'Dolore aliquid delectus quidem sed. Sint sunt omnis voluptatum unde. Voluptatem ab corporis ducimus repellendus voluptas.', 'http://lorempixel.com/640/480/', '935785', 'Ea aspernatur magni omnis qui corrupti eum. Eveniet numquam commodi dolor cupiditate quo eligendi numquam.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (16, 'sed', 'Ipsam id nihil repudiandae sapiente doloremque et rerum cum. Nam labore quo rerum quidem.', 'http://lorempixel.com/640/480/', '9522', 'Voluptas perferendis voluptas ducimus cum nostrum. Culpa odio doloremque amet nisi. Qui harum eaque aut porro libero.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (17, 'possimus', 'Recusandae a sint vel architecto omnis tempora animi. Explicabo aut placeat officiis ut cum in culpa.', 'http://lorempixel.com/640/480/', '755', 'Et est aut omnis. Et assumenda velit dolore ad repudiandae qui molestiae. Aut natus explicabo distinctio. Culpa veritatis odit ipsum consequatur et at voluptate.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (18, 'corrupti', 'Saepe optio ratione dignissimos perferendis maiores odit dolorum quia. Ut molestiae in cupiditate voluptas cum similique illum. Fuga tempore aut vel repellendus distinctio ad.', 'http://lorempixel.com/640/480/', '117', 'Incidunt dolores et illum. Mollitia repellendus ut quo voluptatem omnis.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (19, 'repellat', 'Et quibusdam et ratione corrupti earum. Nisi ea non aut voluptatem esse tempore a. Officiis voluptatum atque mollitia maiores. Doloremque fugit at praesentium aut nemo.', 'http://lorempixel.com/640/480/', '458116', 'Minima et expedita voluptatem iste. Sunt et magnam laborum delectus quas laborum hic perferendis. Non natus sit inventore ea. Molestiae necessitatibus minus facere.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (20, 'molestiae', 'Vel qui asperiores aut laborum qui. Maiores est occaecati dolorem dolorem aut. Asperiores et qui et. A libero ipsam error nulla reprehenderit rerum nisi. Sint quis fugiat quaerat similique accusamus laudantium.', 'http://lorempixel.com/640/480/', '566', 'Quis voluptate ipsa aut sunt. Cum ut inventore deserunt porro assumenda illum. Omnis molestiae tempora aut esse delectus maxime. Doloribus officia debitis est explicabo cum corporis harum.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (21, 'praesentium', 'Et dignissimos deserunt voluptates id delectus. Inventore autem vitae sint cum veritatis nobis. Necessitatibus incidunt delectus consequuntur sed. Ratione pariatur ut vero soluta.', 'http://lorempixel.com/640/480/', '74150754', 'Magni ea sunt quibusdam sunt dolorum. Molestiae qui adipisci occaecati provident eligendi quia. Omnis non repudiandae ut corrupti consequatur.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (22, 'voluptatem', 'Saepe necessitatibus aut et necessitatibus sint earum ea. Fugit deleniti eos eos dolorum. Quia blanditiis id ut.', 'http://lorempixel.com/640/480/', '27365', 'Porro rerum quas fugit ea officiis quis vitae reiciendis. Est dolore inventore eos quaerat. Quidem dolore beatae omnis distinctio. Voluptate et illum dicta et aspernatur.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (23, 'excepturi', 'Id sed similique velit commodi consectetur. Incidunt quasi id mollitia ut harum praesentium architecto. Sit similique eveniet qui modi aspernatur sapiente. Incidunt officia ipsa a aliquam eligendi et modi. Et perferendis qui sed.', 'http://lorempixel.com/640/480/', '0', 'Est dolore quae qui omnis dolorum. Aut delectus cum cupiditate et error deserunt id. Rerum repellendus dolore unde laudantium est odio. Voluptas quo at excepturi porro voluptatum omnis.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (24, 'ut', 'Et soluta est repellat voluptatum consequuntur sed eaque. Est ullam eius iure molestiae sint ut dolor. Ut et autem unde officia et. Molestias vero voluptate quos dolorem autem eum fugit.', 'http://lorempixel.com/640/480/', '56', 'Magni omnis ad iusto aperiam id. Pariatur explicabo praesentium distinctio ut est quia ea ipsam. Rerum perspiciatis et ut veritatis aliquid reiciendis molestiae. Expedita alias sint harum dolorem maxime. Et quo dolor et perferendis perspiciatis velit sequi.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (25, 'quisquam', 'Eligendi voluptas veritatis aut laborum officiis voluptas. Veritatis maiores veritatis ut asperiores optio amet quia. Dolorem voluptas quia enim nobis quas. Dolores error consequatur voluptatem ex exercitationem assumenda.', 'http://lorempixel.com/640/480/', '9945', 'Voluptatem laudantium et aut. Molestiae sint ut saepe omnis ea voluptatem. Quo velit dolores animi ea.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (26, 'et', 'Dignissimos sunt aliquam harum voluptatem quas quis similique. Ut commodi aperiam quas impedit laudantium sequi. Ad veniam veritatis adipisci molestiae.', 'http://lorempixel.com/640/480/', '269823', 'Pariatur magni doloribus aliquid deserunt repudiandae aut consequatur. Quo dicta iure voluptas. Similique omnis id quo deserunt. Omnis in minima tenetur fuga suscipit ratione enim.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (27, 'voluptatum', 'Necessitatibus sint et eos. Et provident quisquam sit quaerat accusamus dolorem. Autem reprehenderit sint ea aut. Explicabo asperiores exercitationem consectetur delectus ut blanditiis.', 'http://lorempixel.com/640/480/', '2592120', 'Veniam beatae doloremque omnis ipsam. Non sequi adipisci rerum vel. Cum sit rerum repudiandae consequuntur.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (28, 'inventore', 'Dignissimos quas sed exercitationem voluptatum. Soluta nulla quisquam et quisquam sunt. Quos voluptas consequatur consequuntur qui veniam est illo aliquam. Voluptas sapiente atque sed quam vitae. Nam deleniti amet doloribus ipsum.', 'http://lorempixel.com/640/480/', '1189', 'Voluptas nesciunt sint qui culpa. Veniam incidunt quia architecto aliquam enim quia ullam. Est maxime numquam quae qui quas architecto esse earum. Voluptate quis qui et maxime sint temporibus.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (29, 'in', 'Voluptatem laudantium sit quia corrupti commodi eius. Omnis voluptas maiores dolor quia et in ab. Quia temporibus at ipsum vitae non.', 'http://lorempixel.com/640/480/', '6193', 'Iure ut quidem tenetur accusamus maiores consequatur. Corporis esse nemo autem nulla voluptate quae. Id rerum veniam commodi molestiae tempora.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (30, 'aspernatur', 'Non voluptatem blanditiis ut quo dignissimos voluptatem. Quas expedita sit neque voluptatem fugiat blanditiis aut et. Temporibus aut voluptatem numquam qui repudiandae nesciunt. In ullam ut nulla inventore voluptatum.', 'http://lorempixel.com/640/480/', '6881965', 'Cum maxime omnis mollitia ea assumenda reprehenderit fugit velit. Qui nihil et quis facilis accusamus. Et et non laudantium perspiciatis perspiciatis officia.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (31, 'aut', 'Quia iste sed et. Aut impedit blanditiis ut excepturi in consequuntur. Eum mollitia voluptatem ut sed. Et nemo ducimus aut deserunt blanditiis repellat. Cumque deleniti maxime optio sequi non alias et doloribus.', 'http://lorempixel.com/640/480/', '17335', 'Ea magnam ut veritatis est nihil voluptatum atque. Suscipit quam non est qui. Provident sit illum exercitationem unde. Nobis voluptatem sit in odit maiores occaecati.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (32, 'earum', 'Labore quibusdam ipsa molestiae cum. Laboriosam nihil voluptas suscipit atque itaque. Debitis magni optio id doloremque. Et quasi natus nemo mollitia. At magni est et praesentium quibusdam ut.', 'http://lorempixel.com/640/480/', '7053977', 'Fugiat non autem nobis et ut asperiores. Et deserunt ut et error beatae voluptas rerum. Dolorem itaque debitis omnis magnam earum commodi.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (33, 'molestiae', 'Ipsum maiores unde omnis quia rerum aut unde. Aut ut officiis quia minus aut vitae. Voluptas amet recusandae ipsa. Sapiente ut occaecati voluptates eos. Aliquid molestias quia totam.', 'http://lorempixel.com/640/480/', '2', 'Similique blanditiis atque et illum nisi. Qui ut consequatur quis qui. Amet dolorem ea sunt omnis doloribus necessitatibus quia.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (34, 'iure', 'Porro quas qui quia quia dicta optio ut quos. Ratione consequuntur accusantium perferendis natus ea quia. Optio rem id a et illum dolorum voluptas.', 'http://lorempixel.com/640/480/', '4858', 'Qui omnis esse tempora sunt asperiores. Illo debitis adipisci consequatur nisi. Eaque nobis omnis ipsum eaque atque. Omnis enim ut nemo et totam.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (35, 'iusto', 'Optio quisquam et nobis et id voluptatum. Aliquam rerum minus deleniti cupiditate velit sit. Dicta qui et ut sunt ut eos.', 'http://lorempixel.com/640/480/', '0', 'Ad magnam est aut consectetur. Doloribus sint modi nesciunt corrupti rem non quam qui.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (36, 'et', 'Quia explicabo eum cumque iste tenetur beatae. Provident corrupti optio placeat et aliquid culpa. Vitae et ab voluptatibus provident et. Ut harum harum molestiae dolores asperiores.', 'http://lorempixel.com/640/480/', '79', 'Et autem repellat ducimus id eum quia sed consequuntur. Excepturi molestiae quo qui incidunt temporibus tempore. Nam tenetur est aliquam quibusdam.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (37, 'quaerat', 'Molestiae incidunt ratione ab totam ipsa odio. Qui id omnis eius dolorem provident sed in. Consectetur officiis aut cumque maiores repellendus inventore.', 'http://lorempixel.com/640/480/', '6334838', 'Unde maxime minus ducimus. Et quam optio a magnam soluta et. Voluptas dolorem expedita omnis quo qui.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (38, 'inventore', 'Et autem at dolores odit eligendi sapiente minus eum. Odit ipsum natus fugit aut. Dolor accusantium ab ratione iste odio commodi qui.', 'http://lorempixel.com/640/480/', '130', 'Debitis ipsum quos repudiandae voluptatem voluptatem ipsam necessitatibus. Qui aut deleniti laudantium non provident eos. Et veniam tenetur vel accusantium. Consequuntur modi corrupti enim amet ea porro odit.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (39, 'quia', 'Ipsam eaque ipsum vitae et illo minima. Sapiente ut porro non facere. Fugiat rerum ipsum tempora explicabo et doloribus unde.', 'http://lorempixel.com/640/480/', '8899', 'Distinctio eveniet laborum sapiente omnis voluptatem quod. Accusamus quia ullam et atque. A quae consequuntur maiores ea. Ullam saepe in libero minus qui.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (40, 'alias', 'Rerum fuga voluptas neque sunt recusandae aperiam labore. Atque in corrupti architecto. Est non aut cumque fugiat. Ullam quam fuga beatae ab iusto.', 'http://lorempixel.com/640/480/', '5935', 'Porro velit magnam molestiae necessitatibus repudiandae qui. Veniam aut et nostrum non sint error. Sed aliquam molestiae deserunt qui explicabo. Sit totam placeat dolorum accusantium similique fugiat.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (41, 'eos', 'Debitis placeat dolorem et perspiciatis doloribus et rerum. Sed repellendus est quod veritatis porro. Commodi quis amet dolor aperiam voluptatibus.', 'http://lorempixel.com/640/480/', '8', 'Iure ex eum voluptatem voluptas. Nemo sit repellendus totam omnis vel ut dolore qui. Quis enim quia sit dolor corrupti dolor est. Magni sequi voluptate hic.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (42, 'in', 'Aliquid ratione et qui laborum explicabo. Hic tempore temporibus corrupti provident rerum est similique. A dolore labore ipsa vel et iure. Unde voluptatem quibusdam ad et iusto voluptatem voluptas molestiae.', 'http://lorempixel.com/640/480/', '0', 'Inventore laborum ducimus voluptate doloribus voluptas doloremque aut. Dolor aspernatur natus pariatur. Sit quia iusto ullam est nostrum sit et. Qui est molestiae quae accusantium consectetur reprehenderit sapiente nemo.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (43, 'voluptas', 'Non nobis minima repellat suscipit in accusantium consequatur. Autem illo optio ab quas a. Repellendus magnam distinctio odio corporis. Ducimus magni asperiores voluptatibus.', 'http://lorempixel.com/640/480/', '555314', 'Et nemo maiores placeat. Id repellendus nobis voluptas nostrum quod omnis ut. Sunt id facilis est sit id soluta.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (44, 'inventore', 'Velit perspiciatis non sint animi officiis voluptatum maxime officiis. Blanditiis optio similique amet aut. Aperiam veniam delectus ut eligendi maxime excepturi rem provident.', 'http://lorempixel.com/640/480/', '711', 'Sint mollitia nihil aut cupiditate labore. Minus nobis id quisquam est consequuntur. Id et fugiat quis sed nemo sunt vero. Vel inventore deleniti quisquam dicta.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (45, 'sequi', 'Illo et similique odit necessitatibus dolor aut sunt. Sit est natus quis dolore voluptates.', 'http://lorempixel.com/640/480/', '0', 'Maiores sit quis quae totam alias. Quo aut soluta reiciendis consequatur consequatur placeat ad. Qui ut placeat corrupti inventore vitae nobis repellat est.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (46, 'rerum', 'Ut accusantium voluptatem beatae aut dicta sit vel odit. Distinctio perferendis aut numquam et. Explicabo cum accusamus dolorem eveniet. Enim rerum unde neque sit inventore dolore.', 'http://lorempixel.com/640/480/', '3452367', 'Voluptatibus esse ea animi aut qui culpa. Labore dolorem optio molestias molestiae. Tenetur architecto harum quis ea distinctio dolore.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (47, 'cupiditate', 'Expedita temporibus vitae quo. Tempora dolores alias eligendi eum quod. Animi culpa doloribus aut eveniet ut corrupti. Sit ab tenetur illo qui quis sed ea.', 'http://lorempixel.com/640/480/', '903605', 'Similique fugit officiis quia voluptatem qui. Sit aut nobis ut qui. Ducimus quod sed aut voluptate quia.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (48, 'autem', 'Tenetur velit aperiam velit ad est. Est illum accusamus libero saepe natus architecto sed. Minima omnis delectus aut cumque omnis numquam. Nemo id molestiae ad aut et aut ea.', 'http://lorempixel.com/640/480/', '6', 'Iste sit optio voluptatem voluptatem rerum magni voluptatem. Provident eum perferendis est unde. Distinctio quia exercitationem cupiditate laboriosam.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (49, 'suscipit', 'Ducimus cum necessitatibus illum eos. Accusantium atque enim vitae animi. Iusto consequatur error ullam modi corrupti exercitationem ut velit. Autem in iure aut quia aut.', 'http://lorempixel.com/640/480/', '14', 'Exercitationem ea atque non quidem sed. Quo qui cumque nemo repellat et aspernatur accusantium nulla. Quia aspernatur esse et dignissimos voluptatem et voluptatem fugiat. Beatae recusandae quia sed ea. Qui quae fuga et accusantium qui natus.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (50, 'ullam', 'Explicabo fugit aut saepe nihil reiciendis animi. Rerum nihil accusamus voluptas alias praesentium non. Amet voluptates enim natus ratione autem dignissimos doloribus officia.', 'http://lorempixel.com/640/480/', '6965', 'Provident consectetur iure aliquid minus voluptatem. Ipsam quo architecto deleniti voluptas perspiciatis consequatur tempora. Et et perspiciatis nobis deserunt in et.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (51, 'sed', 'Aut sunt facilis magnam voluptas voluptas blanditiis. Rerum qui nostrum aut atque. Nihil quos recusandae velit neque animi qui et assumenda.', 'http://lorempixel.com/640/480/', '119', 'Eveniet quam fuga corrupti architecto nobis libero. Et voluptas autem voluptatem. Asperiores labore ullam ipsum deleniti tempore. Blanditiis rerum non beatae repellendus nihil.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (52, 'iusto', 'Autem recusandae id et totam dolor cupiditate. Voluptate nostrum error perspiciatis error itaque quae dolorem. Qui sunt eligendi in voluptas quas.', 'http://lorempixel.com/640/480/', '91198', 'Nemo optio vel harum delectus. Sequi aut blanditiis molestias est. Voluptas laudantium id velit est perspiciatis quis. Natus nam molestiae nam corporis quisquam nisi cupiditate.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (53, 'est', 'Minus quidem eum dolor totam debitis officiis quis vel. Dolores eos dolores est rem non ut. Praesentium facilis rerum nisi. Molestiae rem corrupti culpa nisi ullam laborum consequuntur. Voluptate eum ut eos quam facilis vel possimus.', 'http://lorempixel.com/640/480/', '477710', 'Et nobis deleniti qui et voluptas. Consequuntur necessitatibus autem possimus minima ea. Ut nisi quisquam provident odit commodi voluptatem. Reiciendis modi sapiente omnis nesciunt.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (54, 'minus', 'Molestiae fuga iusto deserunt quibusdam qui eos magni vel. Eligendi explicabo debitis cupiditate unde iusto. Aspernatur in cumque ea et et qui. Repellendus omnis labore rerum sunt deleniti.', 'http://lorempixel.com/640/480/', '73709521', 'Ea occaecati placeat quos minima similique placeat voluptas laborum. Assumenda amet aut qui ut fuga magnam. Nesciunt aliquid repudiandae qui odit sapiente nihil illum. Quia qui reiciendis qui repudiandae aspernatur iusto.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (55, 'ut', 'Et sint in et maiores. Iusto nihil dolorem est eos. Sit repellendus beatae maxime atque ratione.', 'http://lorempixel.com/640/480/', '55', 'Iusto soluta nobis ut ut iste sint natus. Libero vitae modi ab iusto est. Quasi itaque qui et numquam repellat non at. Provident aut accusantium nobis quia deserunt. Vel eaque tenetur totam autem amet.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (56, 'et', 'Aut numquam sed sunt ducimus eos est. Adipisci qui atque ipsam aut voluptatem.', 'http://lorempixel.com/640/480/', '0', 'Quis iure corporis dolorem sapiente perferendis doloremque ea est. Harum dolorem in quo officiis quibusdam natus. Blanditiis sed autem et impedit id. Aut sed quam error esse.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (57, 'quisquam', 'Rerum dolorem earum ab quam. Doloremque officiis id quo velit. Rem vitae asperiores alias consequatur.', 'http://lorempixel.com/640/480/', '7027', 'Odio blanditiis porro est aut ut. Incidunt sunt rerum aut doloribus. Dolores vel et ex occaecati non iusto iure.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (58, 'dicta', 'Expedita ab accusantium rerum magni ut ut et et. Odio omnis est quis dolore et. Eum unde alias quia saepe dolor repudiandae quia. Et ex ut rerum et occaecati repellat voluptatibus.', 'http://lorempixel.com/640/480/', '78136995', 'Ut a ipsa voluptatem recusandae et beatae hic. Eaque qui totam est debitis voluptate vitae aut. Ut ut sit vero fuga omnis.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (59, 'voluptate', 'Tempora nesciunt aut esse aperiam. Et nobis eos distinctio.', 'http://lorempixel.com/640/480/', '857', 'Perspiciatis id sapiente ea optio doloremque provident. Qui atque ipsam provident omnis. Itaque aperiam explicabo est quaerat. Eius voluptatum ab at omnis adipisci. Et corporis quam sed voluptate eos et.');
INSERT INTO `products` (`id`, `head`, `body`, `pictures`, `price`, `specifications`) VALUES (60, 'labore', 'Molestiae nesciunt eaque eligendi molestiae distinctio iste non omnis. Vitae nemo ipsa est quas non reiciendis vel. Rerum commodi quas et harum distinctio.', 'http://lorempixel.com/640/480/', '57851', 'Qui rerum et blanditiis quia dignissimos natus. Voluptate molestias sint quia dolor tempore. Et ut reprehenderit enim tempore iusto omnis.');


#
# TABLE STRUCTURE FOR: shopping_cart
#

DROP TABLE IF EXISTS `shopping_cart`;

CREATE TABLE `shopping_cart` (
  `users_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`users_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (1, 2);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (2, 21);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (3, 32);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (4, 6);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (5, 3);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (6, 48);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (7, 25);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (8, 34);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (9, 14);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (10, 7);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (11, 24);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (12, 53);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (13, 51);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (14, 14);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (15, 53);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (16, 11);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (17, 8);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (18, 36);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (19, 7);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (20, 31);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (21, 6);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (22, 1);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (23, 10);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (24, 12);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (25, 42);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (26, 9);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (27, 50);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (28, 12);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (29, 9);
INSERT INTO `shopping_cart` (`users_id`, `products_id`) VALUES (30, 13);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'по желанию',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adress` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='профили при регистрации';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (1, 'Dusty', 'Schulist', '(372)077-0673', 'mhayes@example.com', 'South Janis', '2247 Hintz Highway Apt. 087\nBlicktown, MD 82643-6294');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (2, 'Bartholome', 'Legros', '366-001-9025x45274', 'verner88@example.com', 'Lake Tyshawn', '61340 Labadie Springs Apt. 466\nNorth Robbie, MI 39579-9871');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (3, 'Richie', 'Trantow', '116.587.6020', 'karine02@example.net', 'Juniorhaven', '3813 Yadira Run Apt. 255\nKuphalbury, CA 47006-6286');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (4, 'Efren', 'Hyatt', '810.231.8858x26634', 'swift.wava@example.net', 'East Dorothymouth', '95753 Mills Mountains\nEast Mitchelburgh, NJ 00729-8535');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (5, 'Jackeline', 'Mayert', '1-307-986-6939', 'lou97@example.com', 'Lake Makenzie', '6833 Fannie Lights\nSouth Shawnaville, WY 69969');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (6, 'Ruben', 'Wisoky', '1-302-160-7537x6474', 'erdman.wilfred@example.org', 'East Isaiahchester', '61023 Liliana Port Apt. 775\nPort Maggiemouth, IA 47513');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (7, 'Candelario', 'Nikolaus', '089.247.8659', 'travon54@example.org', 'Grahamborough', '257 Fay Trafficway\nSouth Dorcasborough, OK 01769');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (8, 'Freddy', 'Spinka', '667.264.3289x34468', 'rebeka74@example.org', 'Lebsackhaven', '46685 Iva Mount Suite 614\nMitchellstad, HI 43581-8896');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (9, 'Keely', 'Predovic', '528-992-6835', 'bhudson@example.com', 'Jasenhaven', '8456 Abshire Parkways Suite 335\nPort Emil, NV 75430-9341');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (10, 'Reina', 'Watsica', '1-814-348-8770x7804', 'dan83@example.org', 'Howemouth', '2170 Francesca View Suite 115\nBoscoshire, SD 48911-9382');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (11, 'Karen', 'Morissette', '472.549.1247', 'xhills@example.net', 'Lake Calebhaven', '0010 Lora Ridges Apt. 812\nSpencerburgh, MD 00739-7477');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (12, 'Anthony', 'Nikolaus', '1-436-904-7568x4040', 'friesen.christine@example.com', 'New Easter', '781 Zulauf Mission Apt. 840\nLake Jesstown, FL 52240');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (13, 'Drake', 'Ullrich', '(384)119-1802x985', 'williamson.sherman@example.net', 'South Jettieborough', '1244 Nia Cape\nBayerborough, WI 99861');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (14, 'Nicholas', 'Hegmann', '713.756.0386', 'vincenza.terry@example.net', 'Lake Horacechester', '794 Johnston Pass Suite 622\nWaelchimouth, ID 84790-3456');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (15, 'Hellen', 'Bins', '1-994-636-5496', 'becker.brandyn@example.org', 'Daphneyport', '06117 Imani Stream\nLarryview, MT 91104-8938');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (16, 'Holly', 'Macejkovic', '+91(7)4866102545', 'flarson@example.com', 'East Zoie', '62246 Terrance Extensions\nHectormouth, VT 44165');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (17, 'Tressie', 'Kilback', '1-193-025-2858x3739', 'elijah.heller@example.org', 'Lake Abbey', '6292 Enola Village\nEast Yeseniaton, ME 66718-3745');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (18, 'Oran', 'Cremin', '771-351-1037x73428', 'lois14@example.net', 'Walkerport', '2712 Lucinda Garden\nLednershire, FL 96210-9989');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (19, 'Narciso', 'Ward', '(798)681-1309x892', 'wolf.kattie@example.com', 'Nataliamouth', '142 Sammy Shore Suite 016\nNew Bradberg, KS 57931');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (20, 'Hans', 'Feil', '1-687-375-6458x4772', 'adolfo35@example.com', 'Zoilaview', '6689 Kunde Crossroad Suite 607\nCaspermouth, AR 80575-9394');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (21, 'Kailyn', 'Kertzmann', '226-639-2291', 'effertz.katlynn@example.net', 'Reynoldchester', '7341 Bahringer Way Apt. 247\nNorth Norma, SD 95056-9880');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (22, 'Keyon', 'DuBuque', '644.459.3223x9534', 'lucy.goodwin@example.com', 'West Ottilie', '32635 Carmella Parkways\nPort Khalidtown, IA 99953');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (23, 'Nathen', 'Schumm', '172-379-5913x587', 'conrad.rutherford@example.com', 'West Aidafort', '79804 Corene Wells\nSamanthaport, HI 79494');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (24, 'Jane', 'Rath', '1-698-947-5322x7615', 'deckow.maxwell@example.net', 'West Annaliseton', '1370 Abernathy Orchard\nMayertshire, NJ 83154');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (25, 'Gail', 'Fay', '701.991.6940', 'katheryn.mitchell@example.net', 'South Myrl', '5484 Ruecker Locks Suite 510\nPort Barontown, IN 68499-6242');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (26, 'Eloisa', 'Steuber', '136-124-3926x0021', 'qfahey@example.org', 'East Jazmyn', '8416 Augustus Camp\nRatkeborough, AR 23002-8818');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (27, 'Lonny', 'Hills', '345.415.6667', 'xreinger@example.com', 'Hudsonhaven', '96950 Golden Springs\nEast Emelieton, MN 18629');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (28, 'Marlee', 'Jacobi', '(086)229-3554x234', 'kuhn.luella@example.net', 'Keonfurt', '0350 Royal Tunnel Suite 167\nNew Celestine, MA 91016-4112');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (29, 'Zachery', 'Brown', '377-511-5863x0476', 'assunta.steuber@example.net', 'Lake Arianna', '022 Roman Underpass Apt. 497\nNorth Tylerport, TX 70356-5689');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (30, 'Kamron', 'Braun', '(591)477-6885x842', 'uherman@example.net', 'Lake Ilaton', '44191 Haag Freeway Suite 300\nLuettgenport, KY 04267-2905');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (31, 'Fred', 'Hackett', '1-979-888-7945x6187', 'ullrich.eduardo@example.net', 'Estrellafort', '854 Donnelly Rest Apt. 334\nMaxineside, LA 06497-6305');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (32, 'Garland', 'Brekke', '124-603-1748x8237', 'abigail43@example.org', 'East Willis', '9609 Langosh Junctions\nDickiport, WV 86987-4582');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (33, 'Oswald', 'Beier', '167.356.2520', 'adella08@example.com', 'Rodriguezland', '30006 Monserrate Square Suite 474\nBoyleville, IL 77334');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (34, 'Jamie', 'Schiller', '1-306-085-8896x446', 'vkrajcik@example.net', 'Turcottemouth', '39805 Lonzo Isle\nSouth Grady, UT 68981');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (35, 'Lacey', 'Dicki', '1-171-643-4449x7034', 'afeest@example.com', 'Runteville', '10634 O\'Hara Courts Apt. 625\nCassandrastad, WY 37846-5380');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (36, 'Sienna', 'Bednar', '1-842-517-0121x298', 'rempel.talon@example.com', 'South Jakobborough', '66162 Okuneva Grove Suite 722\nJakubowskifort, NC 56692');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (37, 'Tiara', 'Herman', '1-402-232-8871x7937', 'mohr.immanuel@example.org', 'Jacobsport', '96948 Block Ramp\nKonopelskishire, CT 15993');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (38, 'Roberta', 'Sauer', '706.983.6080', 'jessyca93@example.net', 'Halvorsonport', '7406 Pat Mills\nLake Ross, DC 14688');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (39, 'Alexandra', 'Walker', '1-932-076-4874', 'zelda.schoen@example.net', 'South Eriberto', '28625 Gardner Green\nEulaliamouth, VA 90650');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (40, 'Maymie', 'Wunsch', '342.260.2653x89960', 'kuphal.arely@example.org', 'Lake Kelvin', '8272 Greta Loaf Apt. 782\nIvoryfurt, LA 86617');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (41, 'Lucy', 'Hoppe', '+66(2)3495202450', 'fstoltenberg@example.net', 'Fredabury', '4465 Eulah Motorway\nHaleytown, NV 22389');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (42, 'Malachi', 'Dietrich', '(392)050-7850x5654', 'vonrueden.gwen@example.com', 'Greenholtbury', '30471 Lesly Ridges Suite 136\nEast Walterborough, KS 58013');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (43, 'Isaac', 'Gislason', '(122)689-3601x58973', 'karl.bosco@example.net', 'South Kenya', '0616 Ullrich Green\nNorth Josefinatown, KY 36331-7559');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (44, 'Aubree', 'Corkery', '1-312-441-3473', 'leone08@example.org', 'Lueilwitzfort', '4216 Adams Viaduct Suite 540\nNorth Manuelaberg, KS 68137-7043');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (45, 'Wellington', 'Klein', '(799)316-6782x3297', 'stehr.bartholome@example.com', 'East Katlynbury', '13227 Janet Fords Apt. 884\nNew Stephanieburgh, LA 37519-6708');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (46, 'Tressa', 'Tromp', '1-118-744-9852x55748', 'royal99@example.net', 'Naderside', '1727 Yost Plains\nSouth Myrabury, SD 99314');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (47, 'Robb', 'Smith', '(767)226-7206', 'odie.orn@example.com', 'Port Raheem', '8760 Arch Meadow Apt. 368\nCameronfurt, VT 59809-3124');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (48, 'Ivy', 'Simonis', '1-508-750-3815x00070', 'demetrius.jakubowski@example.net', 'New Anastacioberg', '469 Schimmel Creek Suite 717\nMillsmouth, SD 83199');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (49, 'Georgette', 'Ullrich', '236-296-0803', 'price.jannie@example.com', 'Kittybury', '479 Runolfsson Summit\nRunteville, WY 07233-5713');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (50, 'Reina', 'Schinner', '343-590-9216', 'josue.harris@example.net', 'Wilfordburgh', '1493 Jose Ridge Suite 543\nTessieshire, NY 63536-7147');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (51, 'Kari', 'Buckridge', '204.312.2418x9143', 'kdickinson@example.org', 'Port Moriah', '0989 Anderson Views\nNorth Leanntown, TN 93940-1300');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (52, 'Jimmy', 'Cole', '429-749-2904x588', 'wbeahan@example.com', 'East Veda', '6205 Berneice Camp\nHarveymouth, NE 46040');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (53, 'Winifred', 'Altenwerth', '(326)527-9659x4841', 'brianne83@example.com', 'West Kellistad', '630 Vickie Lake Apt. 545\nLake Alexanneville, KY 83296');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (54, 'Zetta', 'Nienow', '(695)654-5844x5320', 'theron.schoen@example.com', 'West Florine', '347 Timmy Freeway Suite 455\nWest Santina, MN 15367-2943');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (55, 'Alek', 'Mueller', '+45(6)8373738181', 'gorczany.brannon@example.org', 'West Tamia', '40154 Ernser Lane\nNorwoodborough, SD 86435-4879');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (56, 'Arne', 'Kertzmann', '703-796-2224x308', 'effertz.carmel@example.net', 'Lake Loraburgh', '16148 Dibbert Locks\nWest Santiago, AK 49157');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (57, 'Mallory', 'Blick', '(596)082-8353x4117', 'donnelly.crystel@example.com', 'East Melba', '1079 West Shoal\nWest Pattie, HI 60525-0595');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (58, 'Adalberto', 'Daniel', '1-626-046-6672x57539', 'fahey.beulah@example.org', 'Tierratown', '461 Silas Branch Suite 128\nSteuberborough, IL 74294');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (59, 'Margaret', 'Bosco', '1-417-985-5861', 'hbuckridge@example.net', 'Gerholdchester', '570 Reichert Land\nPort Kristin, FL 30040-6452');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (60, 'Barney', 'Weber', '1-188-192-9922x14019', 'o\'keefe.shaun@example.org', 'Oralhaven', '228 Leannon Harbor Suite 769\nLake Melyssaview, UT 75967');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (61, 'Myah', 'Thompson', '187.777.2714x93355', 'ohammes@example.org', 'North Marisa', '3667 Freda Stravenue\nLake Riverbury, ID 15252');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (62, 'Zelda', 'Hilpert', '698.754.9232x1772', 'colin33@example.com', 'Valentineton', '735 Joana Orchard Apt. 803\nMarianafort, NM 83974-0356');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (63, 'Jaquan', 'McGlynn', '065.355.2594x38269', 'keeling.jaleel@example.org', 'Fletaside', '823 Armstrong Lock\nLake Josefinamouth, VT 41202');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (64, 'Caleigh', 'Hickle', '1-279-072-3650', 'angelo79@example.org', 'Shadchester', '37588 Yost Skyway\nGerhardside, AZ 58204');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (65, 'Adonis', 'Carroll', '(426)950-6327x448', 'lucile.kub@example.com', 'Turnerside', '75616 Erich Spring\nNew Johntown, KY 44672-8602');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (66, 'Edgardo', 'Glover', '254-353-4091', 'lizzie89@example.org', 'Madelineshire', '04138 Katelynn Lights\nParisianburgh, AL 09598');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (67, 'Wilma', 'Abshire', '985-419-0381x172', 'rogahn.roosevelt@example.com', 'New Elwynhaven', '07375 Arvilla Station\nEast Albin, WV 17858');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (68, 'Aniyah', 'Bernhard', '873-439-5219x1112', 'marks.ethel@example.com', 'Jarvischester', '45955 Kulas River\nNew Nola, WY 90246-0385');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (69, 'Elinor', 'Roob', '(872)036-6146', 'borer.benny@example.net', 'Handbury', '8624 Nettie Via\nMeggiehaven, WA 87488-0512');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (70, 'Jayde', 'Dickinson', '(383)338-1172x3235', 'estell.osinski@example.com', 'Bartellfurt', '41740 Franz Squares Apt. 963\nNew Floybury, MN 22089-7193');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (71, 'Misael', 'Kiehn', '1-535-649-3768x73914', 'river.cummerata@example.net', 'Kuvalisstad', '576 Carolanne Village\nEast Zitaborough, MA 58614-4933');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (72, 'Charley', 'Gibson', '1-803-192-2005x43280', 'sasha.kuvalis@example.com', 'Bergstromstad', '88205 Grimes Shores\nJayneview, NV 31482-7738');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (73, 'Liana', 'Okuneva', '732-297-4062x624', 'ron.pagac@example.net', 'Jerroldshire', '655 Kaylie Keys Suite 984\nNorth Ryderville, NY 47374-7610');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (74, 'Enrique', 'Oberbrunner', '920-687-8350', 'hyatt.theodore@example.org', 'Lake Norwood', '144 Wiza Curve\nSouth Wilson, SD 53034-7658');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (75, 'Chloe', 'Breitenberg', '+58(4)7572087207', 'conn.destinee@example.com', 'South Mavis', '4815 Deckow Haven\nNorth Leonora, PA 63935-7184');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (76, 'Francisco', 'Sauer', '846-918-2140x301', 'sziemann@example.com', 'Josefinachester', '8374 Mueller Stravenue Apt. 557\nPort Arielle, WA 70386');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (77, 'Elda', 'Hessel', '(196)743-6597x299', 'dangelo82@example.net', 'Hillaryton', '7992 Hackett Valleys\nSouth Deborah, DC 08053');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (78, 'Stephen', 'Kuhic', '07413047294', 'emmerich.cale@example.org', 'Port Anastasia', '97085 Gorczany Estate Apt. 932\nCroninfort, KY 98091');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (79, 'Providenci', 'Kihn', '525.405.1155x81331', 'ted.dubuque@example.com', 'Stromanburgh', '6286 Olaf Islands\nMurphyberg, HI 17843-1271');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `city`, `adress`) VALUES (80, 'Danika', 'Harris', '(528)076-1521', 'hahn.kevon@example.org', 'Zettachester', '7372 Mireille Locks\nLake Mack, RI 17235');


#
# TABLE STRUCTURE FOR: users_favourites
#

DROP TABLE IF EXISTS `users_favourites`;

CREATE TABLE `users_favourites` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (1, 25);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (2, 33);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (3, 2);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (4, 43);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (5, 49);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (6, 17);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (7, 2);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (8, 12);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (9, 10);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (10, 39);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (11, 26);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (12, 6);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (13, 18);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (14, 20);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (15, 35);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (16, 18);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (17, 31);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (18, 28);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (19, 18);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (20, 12);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (21, 42);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (22, 16);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (23, 50);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (24, 19);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (25, 2);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (26, 16);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (27, 22);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (28, 28);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (29, 41);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (30, 39);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (31, 36);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (32, 9);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (33, 12);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (34, 14);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (35, 23);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (36, 44);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (37, 24);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (38, 42);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (39, 15);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (40, 6);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (41, 47);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (42, 26);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (43, 41);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (44, 2);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (45, 24);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (46, 30);
INSERT INTO `users_favourites` (`user_id`, `products_id`) VALUES (47, 32);


