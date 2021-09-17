/**************************
        Trigger - 1
***************************/

SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER takes_insert BEFORE INSERT ON takes FOR EACH ROW
ENABLE
DECLARE
    t_id takes.id%TYPE;
    t_grade takes.grade%TYPE;
    t_tot_cred takes.grade%TYPE;
    t_name student.name%TYPE;
BEGIN
    t_id := :NEW.id;
    t_grade := :NEW.grade;    
    SELECT name
    INTO t_name
    FROM student
    WHERE id = t_id;    
    SELECT tot_cred
    INTO t_tot_cred
    FROM student
    WHERE id = t_id;    
    t_tot_cred := t_tot_cred + t_grade;    
    UPDATE student
    SET tot_cred = t_tot_cred
    WHERE id = t_id;    
    DBMS_OUTPUT.PUT_LINE('Total credit is ' || t_tot_cred || ' of the student id: ' || t_id || ' Name: ' || t_name || '.');
END;
/
