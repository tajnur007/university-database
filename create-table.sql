/**********************************************************
** Bangladesh Open University				
** Dept. of Computer Science and Engineering		
** S.C.: Dhaka University of Engineering & Technology	
** Kazi Tajnur Islam	15-0-52-020-028 (Old Batch)		
***********************************************************/

/***************************************
**   	  Task-01: Table Creation     **
****************************************/


/*** DDL create Classroom table ***/
CREATE TABLE classroom(
    building VARCHAR2(20) CHECK
		(building IN ('Watson','Packard','Taylor')) NOT NULL,
    room_number NUMBER(4) NOT NULL,
    capacity NUMBER(3),
    PRIMARY KEY(building, room_number)
);


/*** DDL create Time_Slot table ***/
CREATE TABLE time_slot(
    time_slot_id VARCHAR2(10) NOT NULL,
    day VARCHAR2(10) CHECK(day IN ('Sunday','Monday',
		'Tuesday','Wednesday','Thursday')) NOT NULL,
    start_time VARCHAR2(10) NOT NULL,
    end_time VARCHAR2(10),
    PRIMARY KEY(time_slot_id, day, start_time)
);


/*** DDL create Department table ***/
CREATE TABLE department(
    dept_name VARCHAR2(10) NOT NULL,
    building VARCHAR2(20),
    budget NUMBER(10,2) CHECK(budget>0),
    PRIMARY KEY(dept_name)
);


/*** DDL create Course table ***/
CREATE TABLE course(
    course_id VARCHAR2(10) NOT NULL,
    title VARCHAR2(40) NOT NULL,
    dept_name VARCHAR2(10) NOT NULL,
    credits NUMBER(3,2) CHECK(credits>0) NOT NULL,
    PRIMARY KEY(course_id),
    FOREIGN KEY(dept_name) REFERENCES department
);


/*** DDL create Instructor table ***/
CREATE TABLE instructor(
    id VARCHAR2(10) NOT NULL,
    name VARCHAR2(30) NOT NULL,
    dept_name VARCHAR2(10) NOT NULL,
    salary NUMBER(8,2) CHECK(salary>20000) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(dept_name) REFERENCES department
);


/*** DDL create Section table ***/
CREATE TABLE section(
    course_id VARCHAR2(10) NOT NULL,
    sec_id VARCHAR2(10) NOT NULL,
    semester VARCHAR2(10) CHECK(semester IN 
		('Fall','Winter','Spring','Summer')) NOT NULL,
    year NUMBER(4) CHECK(year>1999 AND year<2200) NOT NULL,
    building VARCHAR2(20),
    room_number NUMBER(4),
    time_slot_id VARCHAR2(10),
    PRIMARY KEY(course_id, sec_id, semester, year),
    FOREIGN KEY(course_id) REFERENCES course,
    FOREIGN KEY(building, room_number) REFERENCES classroom
);


/*** DDL create Teaches table ***/
CREATE TABLE teaches(
    id VARCHAR2(10) NOT NULL,
    course_id VARCHAR2(10) NOT NULL,
    sec_id VARCHAR2(10) NOT NULL,
    semester VARCHAR2(10) NOT NULL,
    year NUMBER(4) NOT NULL,
    PRIMARY KEY(id, course_id, sec_id, semester, year),
    FOREIGN KEY(id) REFERENCES instructor,
    FOREIGN KEY(course_id, sec_id, semester, year) REFERENCES section
);


/*** DDL create Student table ***/
CREATE TABLE student(
    id VARCHAR2(10) NOT NULL,
    name VARCHAR2(30) NOT NULL,
    dept_name VARCHAR2(10) NOT NULL,
    tot_cred NUMBER(5,2) CHECK(tot_cred>=0),
    PRIMARY KEY(id),
    FOREIGN KEY(dept_name) REFERENCES department
);


/*** DDL create Takes table ***/
CREATE TABLE takes(
    id VARCHAR2(10) NOT NULL,
    course_id VARCHAR2(10) NOT NULL,
    sec_id VARCHAR2(10) NOT NULL,
    semester VARCHAR2(10) NOT NULL,
    year NUMBER(4) NOT NULL,
    grade NUMBER(5,2) CHECK(grade>0),
    PRIMARY KEY(id, course_id, sec_id, semester, year),
    FOREIGN KEY(id) REFERENCES student,
    FOREIGN KEY(course_id, sec_id, semester, year) REFERENCES section
);


/*** DDL create Advisor table ***/
CREATE TABLE advisor(
    s_id VARCHAR2(10),
    i_id VARCHAR2(10),
    PRIMARY KEY(s_id, i_id),
    FOREIGN KEY(s_id) REFERENCES student,
    FOREIGN KEY(i_id) REFERENCES instructor
);


/*** DDL create Prereq table ***/
CREATE TABLE prereq(
    course_id VARCHAR2(10) NOT NULL,
    prereq_id VARCHAR2(10) NOT NULL,
    PRIMARY KEY(course_id, prereq_id),
    FOREIGN KEY(course_id) REFERENCES course,
    FOREIGN KEY(prereq_id) REFERENCES course
);



