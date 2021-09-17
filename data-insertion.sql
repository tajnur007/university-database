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


/*** DDL for inserting data into Student table ***/
INSERT ALL
    INTO student VALUES ('190101', 'Kazi Tajnur Islam', 'CSE', 0.0)
    INTO student VALUES ('190102', 'Md. Riyad', 'CSE', 0.0)
    INTO student VALUES ('190201', 'Ahsan Kabir', 'EEE', 0.0)
    INTO student VALUES ('190501', 'Md. Nasir Uddin', 'ME', 0.0)
    INTO student VALUES ('190103', 'Md. Mahbub Islam', 'CSE', 0.0)
    INTO student VALUES ('190104', 'Md. Shirullah Khan', 'CSE', 0.0)
    INTO student VALUES ('190301', 'Md. Nazrul Islam', 'IPE', 0.0)
    INTO student VALUES ('190401', 'Mahid Alam', 'CE', 0.0)    
    SELECT * FROM dual;


/*** DDL for inserting data into Course table ***/
INSERT ALL
    INTO course VALUES ('CSE2232', 'Microprocessors and Microcontrollers', 'CSE', 3.0)
    INTO course VALUES ('CSE2236', 'Computer Algorithms', 'CSE', 3.0)
    INTO course VALUES ('CSE2238', 'Database Management System', 'CSE', 3.0)
    INTO course VALUES ('CSE22P9', 'Database Management System Lab', 'CSE', 1.5)
    INTO course VALUES ('CHE2122', 'Chemistry', 'Chemistry', 2.0)
    INTO course VALUES ('PHY1132', 'Wave, Optics and Thermodynamics', 'Physics', 3.0)
    INTO course VALUES ('EEE1233', 'Electronic Device and Circuits', 'EEE', 3.0)    
    SELECT * FROM dual;


/*** DDL for inserting data into Section table ***/
INSERT ALL
    INTO section VALUES ('CSE2232', '1901', 'Summer', 2019, 'Watson', 7001, '101')
    INTO section VALUES ('EEE1233', '1902', 'Summer', 2019, 'Packard', 4001, '102')
    INTO section VALUES ('PHY1132', '1903', 'Winter', 2018, 'Watson', 5001, '103')
    INTO section VALUES ('CSE2238', '1904', 'Winter', 2018, 'Watson', 7002, '104')
    INTO section VALUES ('CSE22P9', '1905', 'Summer', 2019, 'Watson', 7005, '105')
    INTO section VALUES ('CSE2236', '1906', 'Winter', 2018, 'Watson', 7003, '106')    
    SELECT * FROM dual;


/*** DDL for inserting data into Teaches table ***/
INSERT ALL
    INTO teaches VALUES ('101001', 'CSE2232', '1901', 'Summer', 2019)
    INTO teaches VALUES ('102001', 'EEE1233', '1902', 'Summer', 2019)
    INTO teaches VALUES ('106001', 'PHY1132', '1903', 'Winter', 2018)
    INTO teaches VALUES ('101003', 'CSE2238', '1904', 'Winter', 2018)
    INTO teaches VALUES ('101003', 'CSE22P9', '1905', 'Summer', 2019)
    INTO teaches VALUES ('101004', 'CSE2236', '1906', 'Winter', 2018)    
    SELECT * FROM dual;


/*** DDL for inserting data into Takes table ***/
INSERT ALL
    INTO takes VALUES ('190101', 'CSE2238', '1904', 'Winter', 2018, 4.00)
    INTO takes VALUES ('190102', 'CSE2232', '1901', 'Summer', 2019, 3.50)
    INTO takes VALUES ('190201', 'EEE1233', '1902', 'Summer', 2019, 3.75)
    INTO takes VALUES ('190501', 'CSE2238', '1904', 'Winter', 2018, 3.25)
    INTO takes VALUES ('190103', 'CSE2236', '1906', 'Winter', 2018, 3.50)
    INTO takes VALUES ('190104', 'CSE22P9', '1905', 'Summer', 2019, 3.25)
    INTO takes VALUES ('190301', 'PHY1132', '1903', 'Winter', 2018, 4.00)    
    SELECT * FROM dual;


/*** DDL for inserting data into Advisor table ***/
INSERT ALL
    INTO advisor VALUES ('190101', '101003')
    INTO advisor VALUES ('190102', '101003')
    INTO advisor VALUES ('190103', '101001')
    INTO advisor VALUES ('190104', '101002')
    INTO advisor VALUES ('190201', '102001')
    INTO advisor VALUES ('190301', '103001')
    INTO advisor VALUES ('190401', '104001')
    INTO advisor VALUES ('190501', '105001')    
    SELECT * FROM dual;


/*** DDL for inserting data into Prereq table ***/
INSERT ALL 
    INTO prereq VALUES ('CSE2238', 'CSE2232')
    INTO prereq VALUES ('CSE2236', 'EEE1233')    
    SELECT * FROM dual;
    
