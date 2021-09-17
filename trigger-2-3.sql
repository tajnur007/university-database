/**************************
        Trigger - 2
***************************/

SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER timeslot_check1 
AFTER INSERT ON section FOR EACH ROW
DECLARE
    t_check INTEGER;
    t_id section.time_slot_id%TYPE;
BEGIN
    t_id := :new.time_slot_id;
    SELECT COUNT(*)
    INTO t_check
    FROM time_slot
    WHERE time_slot_id = t_id;
    IF (t_check < 1) THEN
        DBMS_OUTPUT.PUT_LINE('The time slot you have entered is not valid.');
        ROLLBACK;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Section inserted successfully.');
    END IF;
END;
/



/**************************
        Trigger - 3
***************************/

SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER timeslot_check2 
AFTER DELETE ON time_slot FOR EACH ROW
DECLARE
    t_check INTEGER;
    t_id time_slot.time_slot_id%TYPE;
BEGIN
    t_id := :old.time_slot_id;
    SELECT COUNT(*)
    INTO t_check
    FROM section
    WHERE time_slot_id = t_id;
    IF (t_check > 0) THEN
        DBMS_OUTPUT.PUT_LINE('Integrity Constraint: This time slot id is referencing the SECTION table.');
        ROLLBACK;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Time slot id deleted successfully.');
    END IF;
END;
/


