/*********************************************************
* Bangladesh Open University				
* Dept. of Computer Science and Engineering		
* S.C.: Dhaka University of Engineering & Technology	
* Kazi Tajnur Islam	15-0-52-020-028 (Old Batch)	
**********************************************************/

/**********************************
* 	   Data Insertion	  *
***********************************/


/*** DDL for inserting data into Classroom table ***/
INSERT ALL
    INTO classroom VALUES ('Watson', 7001, 80)
    INTO classroom VALUES ('Watson', 7002, 80)
    INTO classroom VALUES ('Watson', 7003, 80)
    INTO classroom VALUES ('Watson', 7004, 60)
    INTO classroom VALUES ('Watson', 7005, 60)
    INTO classroom VALUES ('Watson', 5001, 80)
    INTO classroom VALUES ('Watson', 5002, 80)
    INTO classroom VALUES ('Watson', 5003, 80)
    INTO classroom VALUES ('Watson', 5004, 60)
    INTO classroom VALUES ('Watson', 5005, 60)
    INTO classroom VALUES ('Watson', 3001, 80)
    INTO classroom VALUES ('Watson', 3002, 80)
    INTO classroom VALUES ('Watson', 3003, 80)
    INTO classroom VALUES ('Watson', 3004, 60)
    INTO classroom VALUES ('Watson', 3005, 60)
    INTO classroom VALUES ('Packard', 4001, 80)
    INTO classroom VALUES ('Packard', 4002, 80)
    INTO classroom VALUES ('Packard', 4003, 60)
    INTO classroom VALUES ('Packard', 4004, 60)
    INTO classroom VALUES ('Packard', 3001, 80)
    INTO classroom VALUES ('Packard', 3002, 80)
    INTO classroom VALUES ('Packard', 3003, 60)
    INTO classroom VALUES ('Packard', 3004, 60)
    INTO classroom VALUES ('Taylor', 5001, 80)
    INTO classroom VALUES ('Taylor', 5002, 80)
    INTO classroom VALUES ('Taylor', 5003, 60)
    INTO classroom VALUES ('Taylor', 5004, 60)
    INTO classroom VALUES ('Taylor', 4001, 80)
    INTO classroom VALUES ('Taylor', 4002, 80)
    INTO classroom VALUES ('Taylor', 4003, 60)
    INTO classroom VALUES ('Taylor', 4004, 60)       
    SELECT * FROM dual;


/*** DDL for inserting data into Time_Slot table ***/
INSERT ALL 
    INTO time_slot VALUES ('104', 'Sunday', '09:00', '10:00')
    INTO time_slot VALUES ('105', 'Sunday', '10:10', '11:10')
    INTO time_slot VALUES ('106', 'Sunday', '11:20', '12:20')    
    INTO time_slot VALUES ('107', 'Monday', '09:00', '10:00')
    INTO time_slot VALUES ('108', 'Monday', '10:10', '11:10')
    INTO time_slot VALUES ('109', 'Monday', '11:20', '12:20')    
    INTO time_slot VALUES ('110', 'Tuesday', '09:00', '10:00')
    INTO time_slot VALUES ('111', 'Tuesday', '10:10', '11:10')
    INTO time_slot VALUES ('112', 'Tuesday', '11:20', '12:20')    
    INTO time_slot VALUES ('113', 'Wednesday', '09:00', '10:00')
    INTO time_slot VALUES ('114', 'Wednesday', '10:10', '11:10')
    INTO time_slot VALUES ('115', 'Wednesday', '11:20', '12:20')    
    INTO time_slot VALUES ('101', 'Thursday', '09:00', '10:00')
    INTO time_slot VALUES ('102', 'Thursday', '10:10', '11:10')
    INTO time_slot VALUES ('103', 'Thursday', '11:20', '12:20')            
    SELECT * FROM dual;


/*** DDL for inserting data into Department table ***/
INSERT ALL
    INTO department VALUES ('CSE', 'Watson', 8355210)
    INTO department VALUES ('EEE', 'Packard', 2524360)
    INTO department VALUES ('IPE', 'Taylor', 2296480)
    INTO department VALUES ('CE', 'Watson', 2872310)
    INTO department VALUES ('ME', 'Packard', 3264870)
    INTO department VALUES ('Physics', 'Watson', 1698210)
    INTO department VALUES ('Chemistry', 'Taylor', 1540320)    
    SELECT * FROM dual;


/*** DDL for inserting data into Instructor table ***/
INSERT ALL
    INTO instructor VALUES ('101001', 'Dr. Mohammad Abdur Rouf','CSE',150000.00)
    INTO instructor VALUES ('101002', 'Dr. Mohammod Abul Kashem', 'CSE', 160000.00)
    INTO instructor VALUES ('102001', 'Dr. Md. Sharafat Hossain', 'EEE', 90000.00)
    INTO instructor VALUES ('104001', 'Dr. Md. Kamal Hossain', 'CE', 95000.00)
    INTO instructor VALUES ('105001', 'Dr. Mohammad Zoynal Abedin', 'ME', 95000.00)
    INTO instructor VALUES ('105002', 'Dr. Mohammad Lutfar Rahman', 'ME', 65000.00)
    INTO instructor VALUES ('105003', 'Dr. Mohammad Washim Dewan', 'ME', 45000.00)
    INTO instructor VALUES ('101003', 'Dr. Md. Waliur Rahman Miah', 'CSE', 80000.00)
    INTO instructor VALUES ('106001', 'Md. Rezaul Karim', 'Physics', 75000.00)
    INTO instructor VALUES ('107001', 'Dr. Zenia Nasreen', 'Chemistry', 95000.00)
    INTO instructor VALUES ('103001', 'Dr. Md. Abdul Hannan Miah', 'IPE', 105000.00)
    INTO instructor VALUES ('101004', 'Dr. Md. Jakirul Islam', 'CSE', 48000.00)    
    SELECT * FROM dual;

