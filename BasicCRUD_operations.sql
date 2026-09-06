create table students (
Student_id INT,
name char(50),
age INT,
grade char(1)
);

SELECT * from students;


insert into students 
values
(1, 'aman', 22, 'c'),
(2, 'dilip', 24, 'b'),
(3, 'pranshu', 23, 'c');


update students
set age = 25
where name = 'dilip';
