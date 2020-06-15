show tables;

select * from users limit 10;

desc users;

update users set updated_at = current_timestamp where created_at > updated_at;

select * from user_statuses;

update users set status_id = 2 where id in (3, 32, 59, 34);
update users set status_id = 3 where id in (33, 28, 52, 31, 90);

desc profiles;

select * from profiles limit 10;

update profiles set photo_id = floor(1 + rand() * 100);

create temporary table genders (name char(1));

insert into genders values ('m'), ('f'); 

select * from genders;

update profiles set gender = (select name from genders order by rand() limit 1);

update profiles 
  set gender = (select name from genders order by rand() limit 1);
  
create temporary table countries (name varchar(150));

insert into countries values ('russian federation'), ('germany'), ('belarus');

select * from countries;

update profiles 
  set country = (select name from countries order by rand() limit 1);  
  
update profiles set is_private = true where user_id > floor(1 + rand() * 100);  

show tables;

desc messages;

select * from messages limit 10;

update messages set 
  from_user_id = floor(1 + rand() * 100),
  to_user_id = floor(1 + rand() * 100);
  
update messages set media_id = floor(1 + rand() * 100) where from_user_id > floor(1 + rand() * 100);  

desc media;

select * from media limit 10;

select * from media_types;

delete from media_types;

insert into media_types (name) values
  ('photo'),
  ('video'),
  ('audio')
;


truncate media_types;

select * from media limit 10;

update media set media_type_id = floor(1 + rand() * 3);
update media set user_id = floor(1 + rand() * 100);

create temporary table extensions (name varchar(10));

insert into extensions values ('jpeg'), ('avi'), ('mpeg'), ('png');

select * from extensions;

update media set filename = concat('https://dropbox/vk/',
  filename,
  '.',
  (select name from extensions order by rand() limit 1)
);

update media set size = floor(10000 + (rand() * 1000000)) where size < 1000;

update media set metadata = concat('{"owner":"', 
  (select concat(first_name, ' ', last_name) from users where id = user_id),
  '"}');  

alter table media modify column metadata json;

desc friendship;

select * from friendship limit 10;

update friendship set 
  user_id = floor(1 + rand() * 100),
  friend_id = floor(1 + rand() * 100);

update friendship set friend_id = friend_id + 1 where user_id = friend_id;
 
select * from friendship_statuses;

truncate friendship_statuses;

insert into friendship_statuses (name) values
  ('requested'),
  ('confirmed'),
  ('rejected');
 
update friendship set status_id = floor(1 + rand() * 3); 

desc communities;

select * from communities;

delete from communities where id > 20;

select * from communities_users;

update communities_users set community_id = floor(1 + rand() * 20);
