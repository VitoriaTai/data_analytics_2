CREATE TABLE student
(
    id serial PRIMARY KEY,
    first_name character varying,
    last_name character varying,
    email character varying,
    gender character varying,
    work_phone character varying,
    book_preference_hardcopy boolean 
);

CREATE TABLE student_marks
(
    id serial PRIMARY KEY,
    student_reg_id integer,
    student_id integer,
	unit2 integer,
	unit3 integer,
	unit4 integer,
	unit5 integer    
);

select*from student;
select*from student_marks;

select student_id, unit4 from student_marks where unit4 > 50;
select student_id, unit4 from student_marks where unit4 between 89 and 100;

select count(*) id from student; 
select count(*) gender from student where gender = 'Female';
select count(*) gender from student where gender = 'Male';
select unit2 from student_marks;
select student_id, unit2 from student_marks where unit2 = 100;
select count(unit2) from student_marks where unit2 = 100;
select count(*) from student where first_name like 'a%';
select count(*) from student where first_name like '%a';
select unit3, unit5 from student_marks;
select last_name, email from student;