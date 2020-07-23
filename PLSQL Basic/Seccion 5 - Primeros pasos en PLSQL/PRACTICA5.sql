SET SERVEROUTPUT ON
BEGIN
    DBMS_OUTPUT.PUT_LINE('Primer bloque');
    DECLARE
        X    NUMBER := 10;
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Segundo bloque ' || x);
    END;
END;