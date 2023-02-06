use task1;

select max(stds) from(
select s.sid as Section_ID ,count(s.sid) as Stds
from ((course c
inner join section s on c.id = s.cid)
inner join student_Section ss on ss.sec_id = s.sid )
group by s.sid)as max;

select s.sid as Section_ID ,count(s.sid) as Stds
from ((course c
	inner join section s on c.id = s.cid)
	inner join student_Section ss on ss.sec_id = s.sid )
	group by s.sid having stds = (
		select max(stds) from(
			select s.sid as Section_ID ,count(s.sid) as Stds
				from ((course c
				inner join section s on c.id = s.cid)
				inner join student_Section ss on ss.sec_id = s.sid )
				group by s.sid)as max
);