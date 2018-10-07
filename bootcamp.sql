create database high_school;

use high_school;

create table Student (
first_name varchar(20),
last_name varchar(20),
registration_number int not null,
date_of_birth date,
constraint PK_Student primary key (registration_number)
);

create table Teacher (
teacher_id int not null,
first_name varchar(20), 
last_name varchar(20), 
date_of_birth date,
constraint PK_Teacher primary key (teacher_id)
); 

create table Course (
id_course int not null,
name varchar (20),
student_id int not null, 
assigned_teacher int not null, 
hours_by_week int, 
schedule_time int,
note1 int,
note2 int,
note3 int,
constraint PK_Course primary key (student_id , assigned_teacher, id_course),
constraint FK_Student foreign key (student_id) references Student (registration_number),
constraint FK_Teacher foreign key (assigned_teacher) references Teacher (teacher_id),
);

create table Course_day (
id_day int not null,
day_course varchar(20),
constraint PK_Day primary key (day_course)
);

create table Course_Day_hours  (
id_course int not null,
id_day int not null,
begin_hour time(0),
end_hour time(0),
constraint PK_Hour primary key (id_course, id_day)
);

insert into Teacher values (1, 'Teacher', 'one', '01/01/01');
insert into Teacher values (2, 'Teacher', 'two', '02/01/01');
insert into Teacher values (3, 'Teacher', 'three', '03/01/01');

insert into Student values ('Student','one', 1, '01/01/01');
insert into Student values ('Student','two', 2, '02/01/01');
insert into Student values ('Student','three', 3, '03/01/01');
insert into Student values ('Student','four', 4, '04/01/01');
insert into Student values ('Student','five', 5, '05/01/01');
insert into Student values ('Student','six', 6, '06/01/01');
insert into Student values ('Student','seven', 7, '07/01/01');
insert into Student values ('Student','eight', 8, '08/01/01');
insert into Student values ('Student','nine', 9, '09/01/01');
insert into Student values ('Student','ten', 10, '10/01/01');
insert into Student values ('Student','eleven', 11, '01/02/01');
insert into Student values ('Student','twelve', 12, '01/03/01');
insert into Student values ('Student','thirteen', 13, '01/04/01');
insert into Student values ('Student','fourteen', 14, '01/05/01');
insert into Student values ('Student','fifteen', 15, '01/06/01');
insert into Student values ('Student','sixteen', 16, '01/07/01');
insert into Student values ('Student','seventeen', 17, '01/08/01');
insert into Student values ('Student','eighteen', 18, '01/09/01');
insert into Student values ('Student','nineteen', 19, '01/10/01');
insert into Student values ('Student','twenty', 20, '01/11/01');
insert into Student values ('Student','twentyone', 21, '11/01/01');
insert into Student values ('Student','twentytwo', 22, '12/01/01');
insert into Student values ('Student','twentythree', 23, '13/01/01');
insert into Student values ('Student','twentyfour', 24, '14/01/01');
insert into Student values ('Student','twentyfive', 25, '15/01/01');
insert into Student values ('Student','twentysix', 26, '16/01/01');
insert into Student values ('Student','twentyseven', 27, '17/01/01');
insert into Student values ('Student','twentyeight', 28, '18/01/01');
insert into Student values ('Student','twentynine', 29, '19/01/01');
insert into Student values ('Student','thirty', 30, '20/01/01');

insert into Course values (1,'Course 1', 1, 1, 10, 2, 7, 4, 2);
insert into Course values (1,'Course 1', 2, 1, 10, 2, 8, 9, 10);
insert into Course values (1,'Course 1', 3, 1, 10, 2, 7, 6, 4);
insert into Course values (1,'Course 1', 4, 1, 10, 2, 9, 9, 1);
insert into Course values (1,'Course 1', 5, 1, 10, 2, 8, 4, 7);
insert into Course values (1,'Course 1', 6, 1, 10, 2, 6, 6, 6);
insert into Course values (1,'Course 1', 7, 1, 10, 2, 9, 4, 3);
insert into Course values (1,'Course 1', 8, 1, 10, 2, 5, 8, 7);
insert into Course values (1,'Course 1', 9, 1, 10, 2, 2, 5, 4);
insert into Course values (1,'Course 1', 10, 1, 10, 2, 6, 7, 8);

insert into Course values (2,'Course 2', 11, 2, 15, 3, 6, 9, 9);
insert into Course values (2,'Course 2', 12, 2, 15, 3, 9, 6, 6);
insert into Course values (2,'Course 2', 13, 2, 15, 3, 8, 2, 2);
insert into Course values (2,'Course 2', 14, 2, 15, 3, 5, 7, 3);
insert into Course values (2,'Course 2', 15, 2, 15, 3, 6, 4, 7);
insert into Course values (2,'Course 2', 16, 2, 15, 3, 9, 2, 10);
insert into Course values (2,'Course 2', 17, 2, 15, 3, 5, 5, 2);
insert into Course values (2,'Course 2', 18, 2, 15, 3, 7, 6, 4);
insert into Course values (2,'Course 2', 19, 2, 15, 3, 8, 6, 5);
insert into Course values (2,'Course 2', 20, 2, 15, 3, 5, 6, 7);

insert into Course values (3,'Course 3', 21, 3, 10, 2, 7, 3, 9);
insert into Course values (3,'Course 3', 22, 3, 10, 2, 9, 9, 8);
insert into Course values (3,'Course 3', 23, 3, 10, 2, 5, 4, 10);
insert into Course values (3,'Course 3', 24, 3, 10, 2, 7, 7, 6);
insert into Course values (3,'Course 3', 25, 3, 10, 2, 4, 7, 9);
insert into Course values (3,'Course 3', 26, 3, 10, 2, 8, 8, 5);
insert into Course values (3,'Course 3', 27, 3, 10, 2, 8, 8, 9);
insert into Course values (3,'Course 3', 28, 3, 10, 2, 2, 7, 6);
insert into Course values (3,'Course 3', 29, 3, 10, 2, 3, 4, 6);
insert into Course values (3,'Course 3', 30, 3, 10, 2, 5, 5, 5);

insert into Course_day values (1, 'Monday');
insert into Course_day values (2, 'Tuesday');
insert into Course_day values (3, 'Wednesday');
insert into Course_day values (4, 'Thursday');
insert into Course_day values (5, 'Friday');

insert into Course_Day_hours values (1,1,'08:00', '10:00');
insert into Course_Day_hours values (1,2,'09:00', '11:00');
insert into Course_Day_hours values (1,3,'08:30', '10:30');
insert into Course_Day_hours values (1,4,'11:00', '13:00');
insert into Course_Day_hours values (1,5,'08:40', '10:40');

select c.name as 'Course: ', t.last_name + ' '+ t.first_name as 'Teacher: ', s.last_name+' '+s.first_name as 'Students: '
from Course c inner join Teacher t on c.assigned_teacher = t.teacher_id 
inner join Student s on c.student_id = s.registration_number
order by c.name asc ,s.last_name asc;


select name as 'Course: ', (count((note1+note2+note3)/3))*100/10 as 'Percentage Passed: ', 100-(count((note1+note2+note3)/3))*100/10  as 'Percentage Failed: '
from Course
where ((note1+note2+note3)/3) > 5
group by name;

select t.last_name+', '+t.first_name as 'Teacher: ', cd.day_course +' '+convert(varchar(20),cdh.begin_hour) +' - '+ convert(varchar(20),cdh.end_hour) +': '+ c.name as 'Schedule: '
from Course c inner join Teacher t on c.assigned_teacher = t.teacher_id
inner join Course_Day_hours cdh on c.id_course = cdh.id_course
 inner join Course_day cd on cdh.id_day = cd.id_day 
where c.assigned_teacher = 1
group by  t.last_name, t.first_name, cd.day_course, cdh.begin_hour, cdh.end_hour, c.name,cd.id_day
order by cd.id_day;