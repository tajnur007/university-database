/**************************
        Trigger - 4
***************************/


SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER student_delete BEFORE DELETE ON student
FOR EACH ROW
ENABLE
DECLARE
    t_id VARCHAR2(10);
BEGIN
    t_id := :old.id;    
    DELETE FROM takes WHERE id = t_id;
    DELETE FROM advisor WHERE s_id = t_id;    
    DBMS_OUTPUT.PUT_LINE('The student id: ' || t_id || ' record also deleted form TAKES and ADVISOR table.');
END;
/
