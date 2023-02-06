use task1;
#RightJoin
select * from course right join section on course.id = section.cid;
select *
from (course c
right join section s on c.id = s.cid);

#SelfJoim
select distinct s.tid as teacher ,s.sid as section1 ,ss.sid as section2
from section s 
join section ss
on ss.sid <> s.sid
where s.tid = ss.tid
;

select cid from section
union
select id from course;