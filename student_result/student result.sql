create database student_result;
use student_result;
create table students(student_id int primary key,Name varchar(200),Department varchar(200),Year int);

create table Subjects(Subject_id int primary key,Subject_Name varchar (200), Credits int);

create table Marks(Mark_id int, Student_id int,Subject_id int,Marks int,foreign key(Student_id) references students(Student_id),foreign key(Subject_id) references subjects(Subject_id));

insert into students(student_id,Name,Department,Year)
values(1,"Shahana","Data_Analytics",2025),
(2,"Safna","Data_Analytics",2025),
(3,"Surumi","Data_Analytics",2025);

insert into Subjects(Subject_id,Subject_Name,Credits)
values(1,"Maths",100),
(2,"English",100),
(3,"Malayalam",100);

insert into Marks(Mark_id,Student_id,Subject_id,Marks)
values(1,1,1,85),
(1,2,2,98),
(1,3,3,97);


