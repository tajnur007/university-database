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