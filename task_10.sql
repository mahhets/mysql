use vk;

/* Построить запрос, который будет выводить следующие столбцы:
имя группы
среднее количество пользователей в группах
самый молодой пользователь в группе
самый старший пользователь в группе
общее количество пользователей в группе
всего пользователей в системе
отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100 */


select distinct communities.name,
-- count(communities_users.user_id) over() / count(communities_users.community_id ) over(partition by communities.id) as average,
-- найти среднее по вхождениям как по списку не получается, найти среднее путем деления известного на кол-ва пользователей на 
-- известное нам кол-во групп тоже не выходит.Или AVG не считает по вхождениям, или я не понимаю как это работает
	min(profiles.birthday) over(partition by communities_users.community_id) as min_age,
	max(profiles.birthday) over(partition by communities_users.community_id) as max_age,
	count(communities_users.user_id) over(partition by communities_users.community_id) as users_in_group,
	count(profiles.user_id) over() as total,
	count(communities_users.user_id) over(partition by communities_users.community_id) / count(profiles.user_id) over() * 100 as '%'
		from communities_users
			join communities on communities.id = communities_users.community_id
			join profiles on communities_users.user_id = profiles.user_id;
		
		

		
-- 	Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.

create unique index user_phone_idx on users(phone);

create index user_name_idx on users(first_name, last_name);

create index posts_name_idx on posts(head);

create index media_name_and_type_idx on media(filename, media_type);


		

				
			
