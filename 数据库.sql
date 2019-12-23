create database methodology;

use methodology;

create table user(
user_id int primary key auto_increment,
user_userId varchar(20) not null,
user_username varchar(20) not null,
user_password varchar(20) not null,
isVip int
);

create table manager(
manager_id int primary key auto_increment,
manager_number varchar(20) not null,
manager_password varchar(20) not null
);

create table topic(
topic_id int primary key auto_increment,
topic_question varchar(200) not null,
topic_area varchar(10) not null,
topic_answer varchar(2) not null,
topic_update datetime not null,
topic_type int not null,
topic_Analysis varchar(200)
);

create table answerRecord(
aR_id int primary key auto_increment,
aR_answer varchar(2) not null,
aR_right int not null,
aR_time datetime not null,
aR_user_id int not null,
aR_topic_id int not null,
constraint aR_user_id foreign key (aR_user_id) references user(user_id),
constraint aR_topic_id foreign key (aR_topic_id) references topic(topic_id)
);

create table topicOption(
tO_id int primary key auto_increment,
tO_topic_id int not null,
tO_optionNumber varchar(2) not null,
tO_content varchar(100) not null,
constraint tO_topic_id foreign key (tO_topic_id) references topic(topic_id)
);

create table updateRecord(
uP_id int primary key auto_increment,
uP_datetime datetime not null,
uP_new_topic_id int not null,
uP_old_topic_id int not null,
uP_manager_id int not null,
constraint uP_new_topic_id foreign key (uP_new_topic_id) references topic(topic_id),
constraint uP_old_topic_id foreign key (uP_old_topic_id) references topic(topic_id),
constraint uP_manager_id foreign key (uP_manager_id) references manager(manager_id)
);

create table userManagerment(
uM_id int primary key auto_increment,
uM_datetime datetime not null,
uM_content varchar(200) not null,
uM_maneger_id int not null,
uM_user_id int not null,
constraint uM_user_id foreign key (uM_user_id) references topic(topic_id),
constraint uM_maneger_id foreign key (uM_maneger_id) references manager(manager_id)
);