--  Определить кто больше поставил лайков (всего) - мужчины или женщины? + JOIN

select if((select count(*) from likes
	join profiles on likes.user_id = profiles.user_id 
		where profiles.gender='m') > (select count(*) from likes
	join profiles on likes.user_id = profiles.user_id 
		where profiles.gender='f'), 'мужчины поставили больше лайков', 'женщины поставили больше лайков');
		
	
-- Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 10 самых молодых пользователей) + JOIN
	
select sum(likes) from (
	select profiles.user_id, profiles.birthday, count(likes.target_id) as likes 
		from profiles
			join likes on likes.target_id = profiles.user_id where likes.target_type_id = 2
		group by profiles.user_id
		order by profiles.birthday desc limit 10) as count_likes;
		
	
-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети
-- (критерии активности необходимо определить самостоятельно).
	
select concat(users.id, ' (id) ', users.first_name, ' ', users.last_name) as user_id, count(media.user_id) + 
count(likes.target_id) + count(messages.from_user_id) + count(posts.user_id)
as active_count
	from users
		left join media on users.id = media.user_id 
		left join likes on users.id = likes.target_id 
		left join messages on users.id = messages.from_user_id
		left join posts on users.id = posts.user_id
group by user_id order by active_count limit 10;


-- Проверил на данных.Действительно неверно происходит подсчет активности. Не могу взглянуть со стороны и понять где ошибка, логика кажется правильной.
