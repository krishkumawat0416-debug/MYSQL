create database testing12;
use testing12;
create table xyz(id int, name varchar(20));
insert into xyz values(11, 'aman'), (12, 'user');
select * from xyz;

start transaction;
insert into xyz values(13, 'krish');
select * from xyz;
commit;     -- permanatly save data

start transaction;
set SQL_SAFE_UPDATES = 0; -- safe mode disable
delete from xyz;
select * from xyz;
rollback;  -- revert(undo) the transaction

start transaction;
insert into xyz values(23, 'dj');
select * from xyz;
commit;

create table yash123(id int);

start transaction;
update xyz set name = "xyzz";
savepoint krish_savepoint;
insert into xyz values (123456, 'kkkkk');
rollback to krish_savepoint;
select * from xyz;



               