
CREATE DATABASE college;
create database  if not exists college;

drop database	 if exists company;
use college;

create table student (
id int primary key,
name varchar (50),
age int not null
);

insert into student values(1, "ashish" , 36);
insert into student values(2, "narayan" , 34);





show databases;
show tables;
select * from student;