/********************************************************
* Bangladesh Open University				
* Dept. of Computer Science and Engineering		
* S.C.: Dhaka University of Engineering & Technology	
* Kazi Tajnur Islam	15-0-52-020-028 (Old Batch)	
*********************************************************/

/**************************
* 	Task-02: Query	     *
***************************/


/* List of Queries */

/* 1. Find all teachers who work in the CSE department. */

	SELECT *
	FROM instructor
	WHERE dept_name = 'CSE';


/* 2. Find all students who reads in CSE Department. */

	SELECT *
	FROM student
	WHERE dept_name = 'CSE';


/* 3. Find the teachers in EEE department who earn more than 50,000 Tk. */

	SELECT *
	FROM instructor
	WHERE dept_name = 'EEE' AND salary > 50000;


/* 4. Find the students who are enrolled in the summer 2019. */

	SELECT s.id, s.name, s.dept_name, s.tot_cred
	FROM student s, takes t
	WHERE s.id = t.id AND t.semester = 'Summer'
	AND t.year = 2019;


/* 5. Find the teacher who taught ‘Database Management’ course in the winter 2018. */

	SELECT i.id, i.name, i.dept_name, i.salary
	FROM instructor i, teaches t
	WHERE i.id = t.id AND t.semester = 'Winter' AND t.year = 2018 
	AND t.course_id = (
	    SELECT c.course_id
	    FROM course c
	    WHERE c.title = 'Database Management System');

