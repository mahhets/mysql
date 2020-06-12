#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'et', '1985-10-29 11:55:26', '1978-05-31 16:39:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'explicabo', '2001-07-28 16:11:52', '1984-11-06 10:29:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'cum', '2019-04-11 12:05:42', '2010-10-28 01:39:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'dolores', '1994-01-01 03:09:10', '2002-08-19 05:05:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'iusto', '2011-09-07 23:43:34', '2003-06-13 21:05:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'aut', '1988-06-22 03:39:42', '1998-11-02 18:30:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'magni', '2006-04-03 07:54:52', '1989-11-29 18:55:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'ipsum', '1992-09-03 03:23:41', '2014-01-21 20:04:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'consequatur', '1970-09-27 01:00:14', '2000-08-12 11:56:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'culpa', '1987-01-21 23:00:49', '2001-01-13 23:13:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'ut', '2014-08-22 13:21:47', '1980-10-26 04:43:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'tenetur', '1985-09-30 12:47:00', '1986-07-05 05:32:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'voluptatem', '1987-05-04 06:02:57', '1991-08-11 04:23:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'nobis', '1996-12-31 12:21:58', '2016-04-17 16:18:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'sit', '2012-03-31 22:15:28', '1981-09-15 10:07:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'illum', '1976-02-22 21:49:23', '1997-11-23 09:11:33');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '1997-02-27 23:28:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 17, '2001-01-15 20:16:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1972-04-24 05:17:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 18, '2011-06-26 11:11:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2015-06-02 23:37:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 19, '1986-07-25 08:19:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2008-02-12 02:01:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 20, '2014-05-03 07:39:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2009-12-29 07:40:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '1995-04-19 07:57:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2010-11-14 00:29:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '1996-04-23 23:04:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '1977-12-19 17:56:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2006-02-24 09:30:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '1993-10-21 12:56:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '1979-12-03 09:47:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '1978-03-26 00:28:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '1979-12-16 21:15:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '1991-08-11 11:57:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '1987-12-23 19:15:42');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 5, 9, '2008-09-23 16:03:01', '2008-05-07 22:26:15', '1990-12-22 10:49:35', '1990-08-22 02:33:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 5, '1982-12-31 14:58:31', '1989-04-08 22:04:20', '1990-12-17 13:38:15', '1984-09-13 00:54:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 1, 9, '2013-05-05 11:03:30', '1974-01-25 09:54:43', '1979-06-04 02:49:14', '1976-12-20 16:40:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 5, 5, '2007-06-27 08:03:01', '1973-08-26 06:54:11', '1992-01-02 08:54:56', '1985-04-22 14:50:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 1, 3, '1986-07-12 17:13:42', '1977-09-18 08:03:51', '2013-08-10 10:23:36', '1987-08-25 12:17:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 8, 6, '2016-04-15 12:11:11', '1970-05-28 21:32:59', '1972-11-03 20:10:56', '1986-06-10 21:07:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 4, 6, '2009-06-29 15:41:15', '1979-07-29 11:42:12', '2005-05-13 04:02:46', '2019-08-01 10:13:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 3, 1, '2005-06-09 14:41:37', '1997-06-25 14:45:17', '1992-11-09 08:48:59', '1992-10-25 13:31:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 5, 1, '1985-10-22 16:37:20', '1997-09-27 19:50:26', '2018-08-18 11:33:13', '1976-05-28 23:44:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 5, 8, '1994-05-23 05:31:34', '1988-09-06 11:23:08', '1973-08-14 21:42:10', '1978-08-14 14:44:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 9, 4, '2012-06-01 23:27:53', '2014-03-26 12:43:34', '1988-03-31 13:37:13', '2010-06-07 21:04:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 4, 9, '2002-07-29 20:16:31', '2014-07-28 20:59:33', '1972-05-07 00:33:10', '1972-04-07 23:11:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 5, 4, '1994-06-03 02:44:03', '2009-04-30 08:30:25', '1980-05-18 16:56:47', '1974-01-24 11:54:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 1, 9, '1987-09-19 18:14:19', '1982-06-09 01:59:08', '1993-07-12 20:17:32', '2006-01-26 01:23:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 1, 1, '2006-07-11 13:55:35', '1983-07-25 08:42:26', '1989-02-23 13:15:50', '2015-11-13 23:37:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 7, 7, '2010-08-26 10:26:13', '2006-01-22 01:56:49', '1982-09-25 19:13:02', '1986-10-07 11:39:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 3, 1, '1974-06-14 15:08:15', '2005-01-18 04:51:15', '2019-08-02 19:07:27', '2011-07-10 04:32:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 4, 1, '1985-01-25 07:54:05', '1973-04-12 06:21:57', '1999-11-19 03:11:17', '1971-09-26 16:40:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 4, 6, '1980-08-10 19:06:37', '2020-01-20 02:30:34', '2007-07-05 22:38:16', '2007-11-24 03:21:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 5, 2, '1979-06-24 02:42:04', '2004-11-25 12:38:31', '1992-09-01 02:06:15', '1985-11-24 18:01:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 4, 9, '1994-11-26 23:33:38', '2002-03-06 03:11:10', '2011-10-18 10:01:16', '1995-06-27 01:02:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 2, 0, '2002-10-23 03:16:23', '1972-06-01 22:26:36', '2010-10-03 21:45:19', '1972-11-24 21:13:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 6, 3, '2006-03-13 19:11:51', '1995-03-06 14:05:45', '1988-01-22 12:38:32', '1972-01-31 21:57:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 1, 0, '1978-07-22 03:51:16', '1996-06-09 03:46:25', '1989-02-19 16:53:56', '1980-12-21 12:23:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 2, 7, '2017-04-04 21:01:10', '1982-06-03 16:57:19', '2001-07-05 15:52:49', '2014-08-10 14:31:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 9, 5, '1978-08-24 22:59:19', '1998-02-06 12:37:24', '1992-08-22 20:06:41', '2006-09-05 04:13:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 5, 3, '2004-06-17 19:14:04', '2001-10-18 13:18:03', '2002-10-22 15:25:23', '1975-05-22 21:19:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 9, 9, '1992-06-20 11:53:39', '2018-08-19 02:50:43', '1976-02-19 13:20:54', '2014-10-27 00:55:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 8, 2, '1990-06-20 15:13:17', '1998-01-14 09:11:53', '1981-11-29 12:12:28', '1977-02-02 10:42:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 1, 2, '2018-08-07 11:28:22', '2015-05-06 12:57:12', '1971-05-07 05:50:47', '2005-06-18 09:56:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 5, 4, '1970-08-14 01:15:53', '2005-02-01 17:26:29', '2019-10-29 09:05:49', '2007-09-17 04:21:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 3, 3, '2008-04-10 05:08:25', '2019-04-03 19:24:26', '2002-02-11 01:54:02', '1989-05-24 14:06:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 6, 2, '2017-07-31 16:18:22', '1998-02-20 17:20:51', '1976-08-29 07:14:49', '2013-05-24 20:56:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 5, 9, '1977-03-06 11:51:55', '1997-09-17 17:56:16', '1989-04-20 11:46:45', '1975-11-25 16:06:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 3, 8, '2002-12-02 23:54:53', '1978-04-17 16:22:15', '1984-11-10 22:34:21', '1971-10-16 06:28:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 4, 1, '2000-07-25 02:43:42', '1993-03-10 18:45:37', '1998-02-27 01:34:30', '1971-05-24 09:08:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 6, 5, '1997-02-28 13:39:54', '1975-04-07 00:39:12', '2000-11-06 09:39:16', '2018-04-19 05:44:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 2, 6, '2000-05-12 19:30:25', '1997-05-31 15:17:21', '1982-10-30 16:09:36', '2015-03-08 08:41:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 3, 3, '1970-02-28 17:04:15', '1984-12-13 09:29:44', '1978-11-20 21:07:39', '2007-01-23 13:22:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 3, 0, '2007-04-22 01:59:08', '1976-06-17 16:56:58', '1975-06-03 21:08:11', '2005-09-20 02:04:36');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'c', '2015-02-12 03:39:06', '1975-01-20 14:58:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'a', '2006-07-27 23:45:06', '2010-10-18 02:03:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'b', '1991-10-17 04:20:04', '2015-07-09 20:36:41');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, '\"photo\"', '1973-09-17 23:21:58', '2019-01-22 17:56:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, '\"music\"', '1982-02-27 02:54:01', '1996-03-02 23:32:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, '\"video\"', '1992-04-21 15:36:31', '1991-05-08 12:44:27');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 6, 'Perspiciatis quia eligendi provident fugit consequuntur. Quia nihil earum adipisci sed sunt voluptas. Repellat architecto aspernatur expedita dolorum debitis hic qui. Deserunt illo et a dicta quia error aut placeat.', 0, 1, '1974-01-14 16:48:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 5, 'Saepe labore saepe natus mollitia vel similique sunt quos. Eius deleniti labore minus molestiae sunt omnis. Ullam exercitationem tenetur magnam earum ab modi. Alias voluptatum quibusdam voluptas voluptatibus sunt sed sit excepturi.', 1, 0, '2020-03-22 17:30:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Fuga omnis est odit perferendis libero vitae. Modi unde omnis possimus est veniam. Voluptatem quidem quaerat sit et perferendis ullam quibusdam sit.', 1, 1, '2003-01-12 04:03:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 8, 'Expedita expedita magni ex rerum et aliquid aut. Voluptatibus libero exercitationem modi molestiae corrupti quos dolorem. Velit error cumque accusamus beatae ut dolorem accusantium. Laudantium quam qui sed velit.', 0, 0, '1983-11-20 11:53:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 4, 'Quia ipsam numquam aut temporibus. Dolor quam consequatur officiis quos aut vitae non. Pariatur quia repellendus sunt et et cumque nemo.', 1, 0, '1992-04-06 12:39:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 9, 'Doloremque inventore recusandae occaecati sed non odit deserunt fugit. Pariatur ad fugit sint et rem sunt. Harum quae molestias omnis repudiandae magnam aperiam dolorum dolorem. Et qui unde quia et qui quia quod nobis.', 1, 0, '2005-01-02 13:15:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 2, 'Cum reiciendis est ex consequatur corporis omnis. Deleniti odio sit voluptatem. Velit quisquam ut quasi eveniet est eligendi enim debitis.', 0, 1, '2007-02-01 15:04:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 2, 'Totam molestias et ea quia nulla minus blanditiis. Ut quis aut in eaque. Natus maxime sit veritatis eum repellendus nemo eum.', 1, 0, '2008-04-20 18:14:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 3, 'Possimus aperiam ab fugit. Aut minus sunt numquam tenetur vero id. Laborum placeat quam recusandae ut commodi nam porro. Voluptas deserunt distinctio dolor placeat.', 1, 1, '1970-06-10 08:20:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 9, 'Modi consequatur reiciendis laborum enim ut. Dolorem quisquam expedita repellendus blanditiis perspiciatis aspernatur. Eaque cumque omnis voluptatem corrupti vitae. Similique cupiditate incidunt voluptas sapiente totam.', 0, 1, '2016-01-17 10:32:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 8, 'Harum repellat occaecati velit dolor non ex. Illum porro atque maiores vero cum harum facere. Et et quia et qui magni quibusdam sit. Eius sit est nostrum temporibus ut perferendis.', 0, 1, '2012-08-21 07:44:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 5, 'Explicabo deleniti sed commodi error reprehenderit. Ut laborum aut ut ipsum ut sed. Ullam impedit qui in labore ut temporibus.', 1, 1, '2005-11-18 03:12:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 1, 'Sed est vero nihil vero. Est cum non explicabo esse at. Aut eveniet cupiditate fugiat sunt et eaque.', 0, 0, '1988-06-07 16:52:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 9, 'Eum architecto hic veniam ducimus. Culpa ut ipsa qui quidem eaque fugiat. Consequatur sed minus provident architecto magnam consequatur. Totam consequuntur rem vitae fugiat aut dignissimos in. Voluptatem esse velit molestias ut est fugit.', 0, 1, '2008-05-11 01:01:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 9, 'Consequuntur ipsum rerum qui alias modi. Est est quibusdam sunt accusamus illum voluptas sunt. Aperiam animi aliquid architecto odio et voluptas molestias ullam.', 1, 1, '2017-08-12 19:00:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 5, 'Tempore doloremque esse iure deleniti eum. Aspernatur voluptates quaerat ut sint non placeat quas. Sunt facilis aut officiis vitae. Facilis aut vel aspernatur ipsum odit placeat voluptas.', 0, 0, '1998-01-22 22:09:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 7, 'Labore optio qui maiores. Ut est reprehenderit enim doloribus quia alias quia. Fuga et eius eum at est.', 0, 1, '2016-06-18 14:43:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 7, 'Reiciendis voluptatem alias provident voluptatem perspiciatis. Quia id asperiores est sint voluptatem sint.', 0, 0, '2006-11-19 06:00:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 2, 'Libero temporibus fugit fugit ut repellat. Dolor aut soluta sequi. Animi beatae temporibus quidem dolores molestiae quibusdam. Voluptatem quod quis aliquid quis.', 0, 0, '1993-01-27 02:46:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 5, 'Laborum in voluptatum molestias sequi eius quia qui et. Labore sequi aperiam accusamus distinctio accusamus. Veniam expedita voluptatem tempore minus omnis quae. Ex voluptatem illo repellendus non dolore voluptas.', 0, 0, '1993-06-16 13:51:53');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, '\"', '2010-11-20', 'West Wilfordmouth', 'Peru', '1971-12-21 15:47:43', '1990-06-01 00:29:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, '\"', '1971-08-18', 'Streichmouth', 'French Southern Territories', '1979-09-09 22:55:34', '1991-03-02 12:15:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, '\"', '2015-08-10', 'East Shanyborough', 'Mexico', '2013-09-15 06:17:18', '2003-03-07 02:38:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, '\"', '2013-04-22', 'Pinkmouth', 'New Zealand', '1998-04-13 06:14:36', '2017-01-18 18:13:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, '\"', '1980-04-01', 'Nadiaside', 'Jordan', '1971-10-13 08:40:35', '1977-08-03 09:40:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, '\"', '1992-02-07', 'East Kingberg', 'Saint Lucia', '2005-08-22 10:39:08', '1976-11-29 07:42:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, '\"', '2000-04-10', 'New Anastasia', 'Czech Republic', '1978-04-15 05:58:49', '2011-12-29 01:28:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, '\"', '2002-01-19', 'North Elisabethville', 'Cocos (Keeling) Islands', '1983-03-22 09:30:07', '2008-03-21 14:03:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, '\"', '2003-02-20', 'Reaganview', 'Peru', '1986-06-06 07:11:17', '2000-12-23 00:31:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, '\"', '1990-04-21', 'East Agustinaborough', 'Saint Barthelemy', '2017-10-11 22:44:29', '2001-09-03 18:12:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, '\"', '2014-07-15', 'Mannland', 'Mexico', '2015-11-15 04:02:48', '1971-04-27 02:21:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, '\"', '1984-10-13', 'Port Alejandra', 'Serbia', '1993-10-21 18:38:36', '1986-06-08 09:15:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, '\"', '1978-10-26', 'Haagville', 'Papua New Guinea', '1977-09-30 07:13:30', '1996-11-27 14:27:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, '\"', '1973-08-14', 'West Jackelineville', 'Seychelles', '1976-03-01 01:36:53', '2015-08-15 17:00:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, '\"', '1973-08-18', 'East Darionchester', 'Costa Rica', '1995-05-15 02:37:59', '1977-11-29 11:06:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, '\"', '1984-01-24', 'East Patience', 'Namibia', '1979-01-03 06:39:39', '1974-01-13 00:57:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, '\"', '2018-02-14', 'New Herminiaside', 'Portugal', '1991-09-23 06:29:52', '2017-02-02 14:08:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, '\"', '1977-08-24', 'Lake Alda', 'Pakistan', '2010-06-18 02:03:35', '1988-02-15 06:40:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, '\"', '2003-12-15', 'North Guadalupestad', 'Syrian Arab Republic', '1974-10-11 01:07:25', '2007-03-21 03:42:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, '\"', '1991-12-26', 'South Josefina', 'Tonga', '1989-06-14 22:28:59', '1979-08-30 11:38:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, '\"', '1986-03-15', 'Dustinville', 'Portugal', '2004-12-09 04:51:47', '1983-10-27 16:26:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, '\"', '1987-08-06', 'Lake Elva', 'Nauru', '1994-12-27 12:23:51', '1971-07-09 19:16:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, '\"', '2006-03-29', 'Toymouth', 'Cuba', '1990-01-21 20:57:56', '1984-02-14 06:46:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, '\"', '1978-11-26', 'North Abigale', 'Ukraine', '2014-02-22 12:17:10', '1992-05-01 07:59:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, '\"', '1973-05-20', 'Lake Ninaview', 'Cape Verde', '1970-12-05 12:49:54', '1990-03-12 20:01:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, '\"', '2017-11-07', 'East Earnest', 'Kazakhstan', '2017-10-27 02:44:07', '1995-08-11 05:22:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, '\"', '2016-04-02', 'Coleshire', 'Sao Tome and Principe', '1977-11-20 20:23:47', '1971-01-22 23:45:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, '\"', '1983-02-22', 'Port Bethel', 'Jamaica', '1980-06-21 13:14:43', '1991-05-31 13:04:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, '\"', '1974-05-24', 'North Santino', 'Eritrea', '2008-09-19 09:26:17', '1984-01-11 19:55:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, '\"', '2019-06-20', 'Port Guiseppe', 'Congo', '1980-01-16 19:14:36', '1985-11-11 06:47:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, '\"', '1987-12-15', 'Port Louvenia', 'New Zealand', '1985-05-23 08:32:36', '1978-10-18 07:36:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, '\"', '1974-03-25', 'Bartolettiport', 'Finland', '2014-05-10 17:18:08', '1970-05-17 05:01:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, '\"', '1977-03-13', 'Windlerville', 'Ukraine', '2000-04-26 04:35:43', '1990-09-26 01:32:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, '\"', '1979-09-25', 'Chasityborough', 'India', '1970-04-05 23:08:39', '1984-07-11 16:03:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, '\"', '1984-11-09', 'West Mona', 'Kenya', '2011-12-15 22:51:52', '2013-10-29 07:40:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, '\"', '1985-02-14', 'Wuckertmouth', 'Iran', '2016-09-19 09:44:56', '1996-05-12 01:25:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, '\"', '1989-07-31', 'Port Maurineville', 'Moldova', '2018-10-31 20:04:51', '1989-04-04 23:50:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, '\"', '1994-04-08', 'Lebsackshire', 'Madagascar', '1978-04-04 05:53:19', '1985-09-03 01:36:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, '\"', '2006-10-31', 'Marleychester', 'Lesotho', '1998-01-29 04:33:44', '2009-06-24 03:35:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, '\"', '1981-04-05', 'Chesterfort', 'Kiribati', '1999-12-17 15:48:44', '1993-06-12 03:17:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, '\"', '1979-03-04', 'Dibbertton', 'Czech Republic', '1995-05-02 07:11:55', '2018-08-03 12:24:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, '\"', '1979-07-01', 'East Santa', 'Christmas Island', '1977-12-04 08:26:52', '2017-10-27 01:38:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, '\"', '2010-01-17', 'Lake Madelynn', 'Timor-Leste', '1989-12-14 16:21:03', '1980-07-05 05:32:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, '\"', '2000-07-15', 'New Loy', 'Oman', '2009-01-24 14:46:22', '1983-12-22 03:00:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, '\"', '1990-08-23', 'West Chelsie', 'Antarctica (the territory South of 60 deg S)', '2002-02-26 23:01:53', '2017-09-27 02:26:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, '\"', '2015-04-30', 'Sonnyfort', 'Gambia', '1990-06-11 13:47:53', '2012-10-21 15:57:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, '\"', '2018-02-21', 'Harleybury', 'Moldova', '1979-02-07 12:46:09', '1990-06-10 05:05:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, '\"', '1989-11-08', 'Priceport', 'Albania', '1988-08-03 15:29:14', '1972-12-10 23:05:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, '\"', '2012-10-31', 'Lake Haylie', 'Benin', '2010-10-03 03:11:10', '1982-03-08 22:32:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, '\"', '1981-04-25', 'Port Michaleshire', 'Antigua and Barbuda', '1986-05-03 07:59:48', '2008-03-04 07:37:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, '\"', '1977-12-25', 'South Eulaliaport', 'Guam', '1999-09-12 07:38:11', '1994-02-27 18:49:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, '\"', '2007-09-30', 'West Samantha', 'Guam', '1973-03-19 00:03:18', '1980-12-30 12:17:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, '\"', '2012-01-10', 'East Francescaberg', 'Netherlands Antilles', '2003-08-03 02:26:15', '1987-01-06 11:46:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, '\"', '1970-05-21', 'South Arianna', 'Swaziland', '2015-11-03 18:54:02', '2010-02-17 17:36:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, '\"', '1986-01-01', 'New Jena', 'United States of America', '1975-12-15 02:07:02', '2000-07-24 07:44:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, '\"', '1999-01-11', 'McGlynnborough', 'Saint Martin', '1975-03-04 16:33:16', '1975-09-23 11:55:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, '\"', '1998-07-27', 'West Tyreseland', 'Martinique', '2000-05-02 10:21:47', '2010-05-02 15:27:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, '\"', '2002-09-30', 'Shyanneport', 'Equatorial Guinea', '1981-04-14 10:21:34', '2003-03-20 06:26:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, '\"', '1976-05-15', 'Graycetown', 'Timor-Leste', '1992-01-24 09:44:18', '1983-11-02 17:54:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, '\"', '1985-02-11', 'Lamontton', 'Tanzania', '2001-01-25 12:34:55', '1994-12-19 01:58:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, '\"', '2009-06-26', 'North Marinaville', 'Isle of Man', '1970-07-10 15:00:50', '1988-04-23 22:49:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, '\"', '2019-05-18', 'Salvatoreton', 'Svalbard & Jan Mayen Islands', '2013-11-17 16:54:35', '1984-09-26 14:05:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, '\"', '1977-05-03', 'Lindburgh', 'Nicaragua', '1986-01-18 01:40:59', '1988-06-12 03:37:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, '\"', '2007-11-08', 'South Ethylton', 'Andorra', '1983-02-12 03:58:51', '1991-06-14 05:34:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, '\"', '1981-12-09', 'Demariostad', 'Libyan Arab Jamahiriya', '1997-12-03 06:06:56', '1978-12-10 01:45:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, '\"', '1975-04-30', 'Lisandrochester', 'China', '2005-05-10 01:06:46', '1977-11-14 20:01:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, '\"', '1975-09-29', 'New Devontown', 'Kazakhstan', '2002-03-06 17:47:16', '1996-02-01 08:34:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, '\"', '1997-04-21', 'Swiftport', 'Sweden', '1972-07-27 01:46:04', '2011-10-05 22:00:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, '\"', '2000-11-15', 'Funkville', 'British Virgin Islands', '1981-12-17 04:54:36', '1980-09-27 23:19:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, '\"', '2002-05-05', 'Carolynechester', 'Turkey', '2003-06-05 05:19:22', '2012-08-28 10:21:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, '\"', '1970-02-27', 'South Veda', 'Northern Mariana Islands', '1975-05-31 00:45:20', '2011-01-03 16:13:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, '\"', '1970-07-02', 'Eileenville', 'Samoa', '1978-04-30 01:18:40', '1989-09-08 12:47:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, '\"', '2016-01-24', 'Clairfurt', 'Bolivia', '1970-12-26 14:42:05', '1993-05-28 01:40:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, '\"', '1979-08-05', 'North Megane', 'Trinidad and Tobago', '2003-12-20 03:56:43', '2004-09-12 12:18:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, '\"', '2008-09-12', 'Russellshire', 'Philippines', '2015-07-18 22:46:16', '1990-10-24 06:08:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, '\"', '2005-05-03', 'Kirlintown', 'Christmas Island', '1980-02-12 07:43:05', '2009-11-02 20:34:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, '\"', '2002-05-15', 'Willville', 'Saint Helena', '1975-03-20 17:31:50', '1989-03-23 14:10:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, '\"', '1997-05-11', 'Gislasonborough', 'Pitcairn Islands', '2017-06-15 23:03:05', '1977-03-11 09:37:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, '\"', '1983-03-01', 'West Pamela', 'French Guiana', '1978-07-02 09:45:20', '2009-06-18 07:43:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, '\"', '2005-06-11', 'Kochfurt', 'Senegal', '1971-07-07 00:23:37', '1976-04-05 11:24:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, '\"', '2005-06-12', 'West Thereseborough', 'Afghanistan', '2004-04-20 14:48:09', '2012-11-10 09:40:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, '\"', '1997-04-04', 'Elvaside', 'American Samoa', '1986-05-25 12:26:13', '1992-06-12 22:47:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, '\"', '1992-09-29', 'West Pascale', 'Greece', '2016-06-03 12:00:24', '1978-05-10 08:51:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, '\"', '1998-04-15', 'West Rebeccafort', 'British Virgin Islands', '2017-05-06 17:12:02', '1994-12-05 17:46:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, '\"', '2003-03-15', 'Nobletown', 'Switzerland', '2003-09-17 21:36:45', '1994-01-21 10:23:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, '\"', '1973-07-15', 'Madalineside', 'Falkland Islands (Malvinas)', '1988-10-15 13:31:06', '2019-10-08 00:31:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, '\"', '1973-02-22', 'North Helgaland', 'Micronesia', '2013-12-22 18:37:53', '1995-02-08 09:21:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, '\"', '1992-02-26', 'Lake Jordane', 'Tunisia', '2013-12-22 01:00:19', '2010-07-21 10:46:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, '\"', '1981-10-20', 'North Reece', 'Guam', '1990-07-31 08:00:17', '1988-07-24 16:45:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, '\"', '1996-11-05', 'North Rosendomouth', 'Djibouti', '2007-05-09 18:56:08', '2019-06-25 20:32:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, '\"', '2015-06-02', 'South Shayneport', 'Azerbaijan', '2007-06-15 08:31:30', '1999-04-17 20:06:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, '\"', '1976-11-19', 'Sebastianville', 'Anguilla', '2014-06-03 22:27:13', '1985-12-22 19:18:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, '\"', '2003-05-06', 'Keelingmouth', 'Spain', '2006-07-15 01:25:10', '2002-02-23 15:23:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, '\"', '2018-07-01', 'Port Kolby', 'Saint Barthelemy', '2014-03-25 21:12:05', '2019-05-28 14:16:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, '\"', '1977-04-06', 'Gradyton', 'Cote d\'Ivoire', '2016-04-26 12:27:20', '2009-12-17 21:48:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, '\"', '2000-03-01', 'Mayberg', 'Morocco', '2002-04-27 10:15:56', '1999-01-17 09:57:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, '\"', '1971-08-22', 'Mosciskifort', 'Malawi', '2010-11-22 15:06:43', '1996-10-04 05:31:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, '\"', '2015-01-06', 'Altenwerthberg', 'Nicaragua', '1998-12-15 23:27:32', '2000-07-18 09:36:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, '\"', '2010-03-08', 'Kutchtown', 'Saint Martin', '1981-07-15 00:30:12', '1988-09-13 01:55:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, '\"', '1980-08-02', 'Rutherfordville', 'Libyan Arab Jamahiriya', '2014-08-08 20:30:47', '1981-02-09 16:20:19');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Agustin', 'Blanda', 'mekhi47@example.org', '918.649.2412x384', '2011-09-22 07:23:48', '1997-09-12 09:33:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Brycen', 'Fahey', 'mateo84@example.org', '+38(5)1087490606', '2011-05-01 04:17:29', '2009-09-09 03:56:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Josue', 'Schultz', 'paula67@example.net', '(740)426-5685', '2015-05-30 22:12:40', '2006-06-27 02:22:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Kelton', 'Ryan', 'kaylah03@example.org', '+84(9)5586714001', '1978-09-10 22:33:00', '1987-03-24 18:18:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Whitney', 'Glover', 'rick.mitchell@example.net', '1-922-726-7584', '1976-12-14 15:28:16', '2002-11-04 21:48:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Evert', 'Stroman', 'smith.allie@example.org', '886.046.0868', '1984-04-10 02:57:24', '2012-07-26 00:43:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Kaitlin', 'Luettgen', 'frank71@example.org', '932.292.2718x224', '1984-07-04 17:28:23', '1987-02-24 03:55:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Johnathon', 'Muller', 'danielle.schoen@example.net', '(415)619-4907x461', '1974-06-02 05:31:28', '1993-05-15 05:26:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Bridie', 'Padberg', 'haven55@example.net', '+40(4)4781352514', '1991-01-05 17:54:22', '1982-08-04 20:30:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Isabel', 'Denesik', 'elaina50@example.net', '518-299-2278', '1999-03-12 01:08:28', '2017-10-18 10:18:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Vicente', 'Rolfson', 'tbednar@example.com', '497.429.4679x0667', '1985-01-06 12:21:05', '1982-12-25 11:22:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Sheila', 'Cole', 'kulas.demetris@example.com', '1-507-584-6662', '2010-12-23 03:25:31', '2007-12-26 06:06:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Paxton', 'Langosh', 'gislason.roma@example.com', '931.274.5850', '1970-03-30 12:40:48', '1991-01-10 11:33:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Merritt', 'Lindgren', 'alf01@example.net', '(492)848-9863x470', '1980-11-26 18:07:19', '2018-01-02 09:57:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Lisandro', 'Welch', 'herta67@example.com', '(019)421-0847x9394', '1982-02-09 22:26:46', '1993-11-01 11:05:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Damien', 'Denesik', 'mschiller@example.com', '(469)175-2107x73076', '2013-08-02 09:43:38', '2015-06-05 02:02:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Veronica', 'Casper', 'wiza.flossie@example.net', '+78(6)2944671887', '2002-07-28 20:34:15', '1971-04-30 10:05:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Euna', 'Stehr', 'lcorwin@example.net', '1-389-370-9847x537', '1975-10-25 07:12:19', '1992-01-13 00:17:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Sasha', 'Conroy', 'twila.wilkinson@example.org', '825.468.4830x206', '1997-05-12 21:16:59', '1973-06-08 02:47:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Oral', 'Leffler', 'hermiston.kole@example.org', '(651)834-8695', '1976-11-05 00:59:58', '2013-01-28 23:28:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Trevion', 'Rohan', 'hagenes.christophe@example.net', '(348)927-4863', '2000-05-12 03:13:11', '2011-09-04 04:15:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Freda', 'Stehr', 'lebsack.ulises@example.com', '647.963.0227', '1978-12-22 23:53:49', '2019-10-07 02:01:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Ayden', 'Beer', 'tmarquardt@example.net', '(171)893-2314', '1987-08-04 17:19:27', '2004-02-12 15:58:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Harmony', 'Medhurst', 'otho47@example.org', '+01(5)9349781260', '1977-05-06 13:07:09', '1987-07-08 20:27:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Gunnar', 'Reilly', 'cole.king@example.net', '05167558991', '1984-12-22 19:13:27', '1977-02-14 15:23:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Chelsea', 'Swift', 'lucius28@example.net', '736-951-4710', '2014-11-01 19:47:11', '2003-02-14 04:03:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Darren', 'Doyle', 'verla.greenfelder@example.net', '1-982-077-6068x3821', '1994-09-29 23:42:00', '1985-04-29 12:32:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Damien', 'Thompson', 'sophie75@example.net', '(602)765-2404', '2013-02-27 05:59:32', '1973-08-30 06:12:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Shania', 'Littel', 'stamm.thelma@example.com', '01419542166', '2000-06-25 17:12:15', '1994-09-04 19:50:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Enrique', 'Lang', 'abernathy.trycia@example.net', '08214142965', '2000-05-19 09:43:05', '1981-03-28 07:46:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Treva', 'Rolfson', 'claudine26@example.com', '(865)529-9070x76861', '2002-12-31 06:29:12', '1982-08-11 06:37:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Lucie', 'Schamberger', 'heller.jeanie@example.org', '+63(8)3132338597', '2006-03-21 03:46:30', '1996-10-02 04:52:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Flo', 'Beier', 'corkery.clifton@example.net', '839.293.8166x0992', '1980-05-13 23:46:15', '1993-11-05 20:44:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Curt', 'Romaguera', 'fkirlin@example.com', '1-000-215-9877x385', '2002-11-09 14:11:47', '1972-04-02 20:26:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Raymond', 'Schaefer', 'heber79@example.org', '147.852.0002x71473', '2009-03-18 10:08:18', '1992-03-11 05:48:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Earnest', 'Hoeger', 'mclaughlin.faustino@example.net', '(260)243-1316x0344', '1996-12-17 12:51:40', '1989-08-27 01:47:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Daphnee', 'Kutch', 'auer.phoebe@example.org', '08842557562', '1975-04-28 21:36:33', '1986-04-23 08:51:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Kiara', 'Harris', 'yaufderhar@example.net', '1-144-450-9514', '1979-12-27 10:02:43', '2011-08-03 17:31:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Rasheed', 'Conroy', 'mia.gleichner@example.org', '021-018-2877x444', '1974-05-01 05:57:28', '1994-10-30 14:23:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Oma', 'Carroll', 'fbeier@example.net', '813.040.4905x648', '2012-06-09 23:18:59', '1980-08-23 07:15:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Antonetta', 'Hartmann', 'bschmidt@example.net', '132-571-5207', '1971-09-14 01:50:24', '2007-06-13 20:15:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Hillard', 'Hoeger', 'odessa15@example.net', '1-420-357-1451x18119', '1990-06-20 21:02:56', '1976-08-16 06:31:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Belle', 'Waters', 'kuhlman.silas@example.net', '394-323-0445x69038', '1997-12-18 08:38:11', '2012-05-04 02:15:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Brandt', 'Champlin', 'amira78@example.com', '02510554090', '2011-07-16 07:13:56', '2006-06-04 15:26:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Hazel', 'Reichert', 'lindgren.samanta@example.org', '(426)990-4698', '1977-12-20 18:27:19', '1971-02-08 15:08:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Colby', 'Cremin', 'carmel.runolfsdottir@example.net', '939-796-6478', '1996-09-29 16:08:03', '1980-09-09 22:38:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Aliyah', 'Weber', 'efrain26@example.org', '1-689-119-5498x8887', '2017-08-01 11:52:05', '1993-01-31 05:28:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Sincere', 'Gleichner', 'fjohnston@example.org', '109-078-3950x03255', '2007-04-24 16:24:21', '2016-06-12 16:01:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Jillian', 'Heidenreich', 'nola.schmidt@example.org', '(855)123-4029x184', '1998-05-02 19:40:05', '1987-10-20 07:50:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Crystal', 'Koch', 'goldner.christopher@example.com', '+11(7)5565294936', '2008-04-29 15:25:47', '1971-04-09 01:08:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Guido', 'Hermiston', 'herdman@example.net', '(552)066-5762', '1997-02-25 21:59:50', '1972-04-06 21:08:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Daisy', 'Lynch', 'bernie.hagenes@example.net', '451.962.7843', '2020-05-18 08:16:37', '2008-10-11 15:29:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Marcos', 'Miller', 'wjast@example.net', '390.466.3541x08494', '2007-09-18 23:22:23', '2007-12-12 23:07:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Alessandra', 'Ankunding', 'wilderman.dandre@example.org', '1-497-685-1972x25589', '1986-04-17 20:48:38', '2004-11-29 23:41:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Yasmin', 'Mueller', 'kharvey@example.org', '02599831332', '1983-05-29 13:14:09', '1996-07-28 03:54:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Jazmin', 'Kunze', 'amaya69@example.net', '(625)631-0116x103', '1986-12-25 21:50:05', '1985-09-02 08:17:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Lauren', 'Bogan', 'leannon.norberto@example.net', '1-787-433-1152x153', '1994-07-10 05:06:02', '1993-09-20 18:37:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Shakira', 'Kozey', 'sarai.franecki@example.com', '+06(2)6807427736', '2008-03-29 16:35:13', '2008-09-22 03:11:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Joany', 'Hermann', 'celestino.harber@example.org', '(809)610-2264x021', '2011-07-31 23:07:04', '1999-06-23 12:12:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Tito', 'Stamm', 'corrine.gibson@example.com', '04839543511', '2012-06-24 11:13:01', '1980-04-05 09:24:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Paula', 'Cremin', 'rschaden@example.com', '274.523.6359x969', '1988-04-02 08:19:16', '1986-12-08 18:04:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Robin', 'Gibson', 'mkunde@example.org', '+39(2)7361344065', '2013-05-12 16:22:16', '2001-09-09 13:45:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Kristy', 'Stiedemann', 'king.joshuah@example.net', '04312337613', '2010-06-11 20:49:49', '1986-05-19 12:50:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Toy', 'Quigley', 'kaley.feeney@example.org', '1-217-017-0283x79628', '1997-12-22 03:28:09', '2015-06-22 14:16:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Amara', 'Abshire', 'aaliyah.ward@example.org', '(030)547-7762', '1991-04-09 12:55:11', '1981-09-17 10:52:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Heaven', 'Armstrong', 'schaden.bartholome@example.net', '796.414.1015x4297', '2013-07-12 02:17:28', '2013-03-10 13:49:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Melany', 'Romaguera', 'wisoky.vesta@example.org', '(141)688-9480', '1993-01-15 09:39:41', '1976-05-23 08:22:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Jonathan', 'Fritsch', 'anastasia.cassin@example.org', '390.581.9337x6058', '1970-08-31 19:59:06', '1999-05-30 10:14:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Royal', 'McKenzie', 'oran72@example.net', '1-137-031-1486x20009', '2019-06-12 03:27:05', '1992-05-12 01:14:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Anissa', 'McClure', 'alysa46@example.net', '+39(9)6985024508', '1999-05-02 11:00:03', '1972-02-22 13:03:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Violette', 'Kilback', 'heidenreich.rodrigo@example.org', '583.652.5972', '1991-05-22 13:38:48', '1995-04-03 06:56:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Saige', 'Bashirian', 'eulah27@example.net', '1-679-286-9250x700', '1994-01-16 09:50:14', '2010-10-01 03:28:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Kenna', 'Heller', 'tleffler@example.net', '(666)782-9889x139', '2002-05-11 18:24:44', '2017-08-02 11:14:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Maude', 'Will', 'audie60@example.com', '(367)915-7835x703', '1971-11-08 21:30:03', '1980-12-04 05:59:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Leta', 'Littel', 'tboehm@example.net', '231-853-2255x9129', '2006-08-31 17:09:36', '2018-05-27 03:26:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Norberto', 'Yost', 'boyd33@example.net', '+03(3)1038940257', '1971-07-13 20:31:27', '1972-12-12 19:53:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Alexis', 'Orn', 'casey.gislason@example.com', '07799463757', '1985-03-05 18:02:33', '1999-12-23 07:41:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Bradly', 'Hudson', 'hyatt.rebeka@example.org', '269.413.5401x01509', '1979-09-09 03:15:57', '2009-08-26 11:57:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'David', 'O\'Keefe', 'teresa67@example.com', '(254)853-0054', '1988-08-18 03:46:33', '2018-03-05 02:30:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Emma', 'Daugherty', 'anjali.ward@example.org', '978-124-8902x9786', '1979-07-20 05:02:26', '1992-11-12 20:06:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Trevion', 'Ledner', 'raoul.hermiston@example.com', '(545)023-4961x367', '2000-08-26 07:20:26', '2008-02-17 18:50:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Marcus', 'Windler', 'oruecker@example.net', '168-637-7302x37254', '2007-04-03 19:10:04', '1999-08-01 18:13:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Zola', 'Kuhn', 'hauck.shaun@example.org', '781-142-1222x5419', '1995-07-26 17:09:07', '1988-09-26 17:54:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Kylie', 'Kassulke', 'wsmitham@example.net', '(008)584-7125', '1975-02-09 20:09:34', '1974-06-18 05:03:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Abigale', 'Bogan', 'scottie.bahringer@example.com', '+08(2)4782048757', '2018-06-05 16:00:33', '1991-02-14 11:33:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Esperanza', 'Kertzmann', 'mmarquardt@example.net', '178-819-2615', '1987-06-12 05:25:38', '2016-05-15 15:45:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Elijah', 'Heller', 'conn.roger@example.com', '1-932-828-9715', '1991-07-31 00:43:33', '2011-10-06 02:34:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Kendrick', 'Gislason', 'adrienne.schamberger@example.org', '1-617-442-6568x021', '2007-10-07 05:48:10', '2011-11-05 10:06:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Willis', 'Witting', 'curtis28@example.org', '010.734.7883', '1979-06-28 20:43:10', '1986-05-28 11:10:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Lauriane', 'Gibson', 'heidenreich.lorenza@example.org', '03757941766', '1978-07-31 16:51:55', '2014-09-27 01:12:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Myrtice', 'Pfeffer', 'ellen.langworth@example.net', '820-087-4722x5731', '1988-02-04 09:51:19', '1980-06-15 13:02:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Benny', 'Blanda', 'francesca97@example.org', '1-633-655-6211', '1971-12-12 01:23:02', '1998-09-17 22:20:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Brandy', 'Olson', 'brock.crooks@example.net', '1-924-368-4873', '2008-12-14 00:17:52', '2002-12-14 21:41:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Rose', 'Bergnaum', 'cassin.ericka@example.net', '177-655-2505', '2001-02-11 13:10:42', '1983-08-17 03:06:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Marge', 'Oberbrunner', 'pierce62@example.com', '015-210-4921', '1997-09-02 10:08:15', '1994-04-13 19:19:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Salvador', 'Bergnaum', 'lowe.jadon@example.net', '1-914-309-9646x99922', '2001-03-09 06:21:35', '1974-10-02 11:21:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Merritt', 'Reilly', 'o\'connell.cesar@example.com', '149-973-4254', '2002-01-19 04:05:09', '2018-11-12 04:40:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Mohammad', 'Muller', 'bergstrom.rosalyn@example.org', '+62(0)8434460362', '2016-03-18 22:04:57', '1986-01-04 23:59:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Norberto', 'Bernhard', 'khalid.harvey@example.com', '(412)575-2562', '1999-05-26 07:25:05', '1978-10-04 06:30:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Ashlynn', 'Senger', 'keegan38@example.net', '(796)708-0300x0384', '1974-10-06 20:59:20', '2013-02-15 12:35:52');


