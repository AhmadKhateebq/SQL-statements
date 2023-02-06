drop schema task1;
create database Task1;
use Task1;
create table if not exists  teacher(
	id int primary key auto_increment,
    fname varchar(50)
);
create table if not exists course(
	id int primary key,
    cname varchar(50)
);
create table if not exists  student(
	id int primary key auto_increment,
    sname varchar(50)
);
create table if not exists section(
	sid int primary key auto_increment,
    tid int,
    cid int,
    foreign key (tid) references teacher(id),
    foreign key (cid) references course(id)
);
create table if not exists student_section(
	id int primary key auto_increment,
    sec_id int,
    std_id int,
    foreign key (sec_id) references section(sid),
    foreign key (std_id) references student(id)
);
insert into teacher (fname) values ("T1"),("T2"),("T3");
insert into course (id,cname) values (1,"c1"),(2,"c2"),(3,"c3"),
(4,"c4"),(5,"c5"),(6,"c6");
insert into section (tid,cid) values (1,1),(1,2),(1,3),(2,2),(3,1),(3,4),(3,5),(3,6);
insert into student (sname) values ("std1"),("Std2"),("Std3"),("Std4"),("Std5"),("Std6");
insert into student_section (std_id,sec_id) 
values (1,1),(1,2),(1,3),(1,7),(2,1),(2,4),(2,7),(2,8),(3,2),(3,3),(3,8),(3,4),(4,5),(4,4),(4,7),(4,8);
insert into student_section (std_id,sec_id) 
values (3,4);
