SET SERVEROUTPUT ON
DECLARE
    X   NUMBER  :=  10;
BEGIN
    IF
        X = 10
    THEN
        DBMS_OUTPUT.PUT_LINE('X = 10');
    ELSE
        DBMS_OUTPUT.PUT_LINE('X = OTHER VALUE');
    END IF;
END;