show tables;

DESC profiles;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
      

DESC messages;

ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);
   

desc users;
desc user_statuses;

--  Ключ для users - user_statuses

ALTER TABLE users
  ADD CONSTRAINT user_statuses_id_fk 
    FOREIGN KEY (status_id) REFERENCES user_statuses(id);
   
--  Ключ для media - media_types, media - users
   
ALTER TABLE media
  ADD CONSTRAINT type_from_mediatypes_id_fk 
    FOREIGN KEY (media_type_id) REFERENCES media_types(id);
ALTER TABLE media
  ADD CONSTRAINT users_media_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id);
   
 
   
-- Ключ для communities_users - users, communities_users - communities

ALTER TABLE communities_users 
	ADD CONSTRAINT com_users_to_com_fk
		FOREIGN KEY (community_id) REFERENCES communities(id);
ALTER TABLE communities_users 
	ADD CONSTRAINT com_users_to_users_fk
		FOREIGN KEY (user_id) REFERENCES users(id);
	
-- КЛючи для friendship

ALTER TABLE friendship
	ADD CONSTRAINT friedship_to_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE friendship
	ADD CONSTRAINT user_to_friedship_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id);
ALTER TABLE friendship
	ADD CONSTRAINT friedship_status_id_fk
		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);
	
	
-- Ключи для постов

ALTER TABLE posts
	ADD CONSTRAINT users_id_post_fk
		FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE posts
	ADD CONSTRAINT community_id_post_fk
		FOREIGN KEY (community_id) REFERENCES communities(id);
ALTER TABLE posts
	ADD CONSTRAINT media_of_post_id_fk
		FOREIGN KEY (media_id) REFERENCES media(id);
	
-- Ключи для лайков
-- Тут или я что-то не понимаю, или мы некорректно составили таблицу.
-- В лайках есть только 1 таргет, а от типа таргета нет привязки к постам/сообщениям/медиафайлам.
-- Сделал к постам, она все равно тестовая

ALTER TABLE likes
	ADD CONSTRAINT user_to_target_fk
		FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE likes
	ADD CONSTRAINT target_message_fk
		FOREIGN KEY (target_id) REFERENCES posts(id);
ALTER TABLE likes
	ADD CONSTRAINT likes_target_id
		FOREIGN KEY (target_type_id) REFERENCES target_types(id);


-- Задание 3

select if((select count(*) from likes
	join profiles on likes.user_id = profiles.user_id 
		where profiles.gender='m') > (select count(*) from likes
	join profiles on likes.user_id = profiles.user_id 
		where profiles.gender='f'), 'мужчины поставили больше лайков', 'женщины поставили больше лайков');
        
        
-- На остальные задания увы не хватило времени, но к примеру 4 в моей бд не показательно(нет лайков конкретно пользователям), или нужно смотреть весь их контент и принимать лайки как лайки на контент пользователя, а лайки в моей бд только для постов.
-- Я возможно переделаю таблицы и решу задания 4 и 5 к след уроку.
	



