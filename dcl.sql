-- DCL 
-- > DATA CONTROL LANGUAGE
-- GRANT, REVOKE

create user 'ram' identified by 'ram';
select * from mysql.user;

show grants for 'ram'; -- will show privileges

-- grant statment

grant all privileges on regex1.* to 'ram';

-- Revoke statment

revoke all privileges on regex1.* from 'ram';

-- ROLE statement

create role 'hanuman';
select * from mysql.user;

grant all privileges on regex1.* to 'hanuman';
show grants for 'hanuman';
