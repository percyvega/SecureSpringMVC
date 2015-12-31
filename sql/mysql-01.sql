create schema if not exists spring_security;

drop table if exists authorities;
drop table if exists users;

create table if not exists users (
	username varchar(50) not null primary key,
	password varchar(50) not null,
	enabled boolean not null
) ENGINE=InnoDB;

create table if not exists authorities (
	username varchar(50) not null,
	authority varchar(50) not null,
	foreign key(username) references users(username),
    unique index ix_auth_username (username,authority)
) ENGINE=InnoDB;



insert into users (username, password, enabled) values ('percy', 'abc123', true);
insert into users (username, password, enabled) values ('fran', '1qaz', true);
select * from users;

insert into authorities (username, authority) values ('percy', 'ROLE_USER');
insert into authorities (username, authority) values ('fran', 'ROLE_ADMIN');
select * from authorities;
