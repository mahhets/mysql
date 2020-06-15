show databases;

use vk;
show tables;

alter table profiles add photo_id int unsigned after user_id;

create table user_statuses (
	id int unsigned not null auto_increment primary key, name varchar(150) not null unique);

insert user_statuses (id,name)
values (1,'active'),(2,'blocked'),(3,'deleted');

alter table users add status_id int unsigned not null default 1 after phone;

alter table profiles add is_private boolean default false after country;

alter table friendship add column declined_at datetime after confirmed_at;

alter table messages add column media_id unsigned after body;

alter table friendship drop column requested_at;


