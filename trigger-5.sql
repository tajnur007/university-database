/**************************
        Trigger - 5
***************************/

SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER instructor_insert 
BEFORE INSERT ON instructor
FOR EACH ROW
ENABLE
DECLARE
    t_dept_name instructor.dept_name%TYPE;
    dept_count integer := 0;
BEGIN
    t_dept_name := :new.dept_name;
    SELECT COUNT(*) INTO dept_count FROM department WHERE dept_name = t_dept_name;    
    IF (dept_count  < 1) THEN
        INSERT INTO department(dept_name) VALUES (t_dept_name);
        DBMS_OUTPUT.PUT_LINE('New Instructor inserted as well as a new Department (' || t_dept_name || ') is also created.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('New Instructor inserted.');
    END IF;        
END;
/






