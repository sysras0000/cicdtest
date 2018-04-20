--create tablespace devops_ts owner wicpstgp location '/var/postgresql/con/v9.6/devops_ts';
create role testuser with password 'testuser' LOGIN;
--create database devops with owner = wicpstgp tablespace devops_ts;
create database devops with owner = wicpstgp;

\c devops;

drop table student ;
create table student (
  name char(16) not null,      -- Full Name
  status char(1)                -- E-enrolled, N-no show
);

insert into student (name, status) values ('Jerry', 'E');
insert into student (name, status) values ('Harsha', 'E');
insert into student (name, status) values ('Dan', 'E');
insert into student (name, status) values ('Richard', 'E');
insert into student (name, status) values ('Sunil', 'E');
insert into student (name, status) values ('Justin', 'E');
insert into student (name, status) values ('BillyBob', 'E');
insert into student (name, status) values ('Howard', 'E');

grant insert, update, delete, select on table student to testuser;

