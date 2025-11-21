create table hr.emp_copy
as select employee_id, first_name from hr.employees where employee_id<105;

select * from hr.emp_copy;

insert into EMP_COPY values(107,'krish');

-- THIS for multiple row and har ek row work
insert into EMP_COPY
select employee_id, first_name from hr.employees where employee_id between 108 and 112;

