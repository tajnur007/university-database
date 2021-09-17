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

