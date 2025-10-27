-- DDL and DML 
-- DDL : data defination language ( create, drop, alter, truncate)
-- Language : data defination , table

-- Create
use regex1;
create table td(id int); -- create statment == ddl operation

-- drop 
drop table td; -- data and table structure both are deleted (we can't undo)

create table t5(id int);
desc t5;
-- ddl ( table structure is changed )
alter table t5 add column name varchar(20);

desc t5;

-- DQL  (select, group by, joins, subquery)

alter table t5 drop column id;

select * from t5;
alter table t5 add column eid int primary key; -- ddl
desc t5;

-- DML ( insert, update, delete, (merge--> mysql not support) )
insert into t5 values('krish', 21), ('gk', 22);

SET sql_safe_updates = 1;
update t5 set name = 'kg'; -- without condition ( all rows are update )
select * from t5;

update t5 set name='regex' where eid =11; -- update on condition (use this method)
select * from t5;

-- DELETE
-- DELETE from t5
delete from t5 where eid = 12; -- this can undone ( we can undo it )
select * from t5;

-- TRUNCATE (DDL)

truncate t5;
select * from t5;