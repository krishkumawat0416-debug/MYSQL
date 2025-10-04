select * from student;
select * from Enrollment;

select s.studentid, s.studentname, e.enrollmentid from student as s
join enrollment as e where s.studentid = e.studentid;

select s.studentid, count(e.enrollmentid) from student as s
left join enrollment as e on s.studentid =  e.studentid
group by s.studentid;

select e.coursename, count(s.studentid) from student as s
inner join enrollment as e on s.studentid =  e.studentid
group by e.coursename;

