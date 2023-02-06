use task1;
select s.sid as Section_ID,count(s.sid) as Students from section s,student_section ss
where  ss.sec_id = s.sid group by s.sid;

select s.sid as Section_ID,count(s.sid) as Students from section s,student_section ss
where  ss.sec_id = s.sid group by s.sid order by students DESC LIMIT 1;

select Section_ID, Students from
	(
	select s.sid as Section_ID, count(s.sid) as Students 
		from section s,student_section ss
		where  ss.sec_id = s.sid group by s.sid
	)as t 
	HAVING students = (
		select count(s.sid) as Students
        from section s, student_section ss
		where  ss.sec_id = s.sid 
        group by s.sid order by students DESC LIMIT 1
        ) ;
        
        
	select Section_ID, Students from
	(
	select s.sid as Section_ID, count(s.sid) as Students 
		from section s,student_section ss
		where  ss.sec_id = s.sid group by s.sid
	)as t 
	HAVING students = (select max(Students) from (
select count(s.sid) as Students
        from section s, student_section ss
		where  ss.sec_id = s.sid 
        group by s.sid
)as max ) ;
