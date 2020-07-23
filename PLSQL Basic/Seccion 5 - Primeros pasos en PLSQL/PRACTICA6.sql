SET SERVEROUTPUT ON
DECLARE
        X    NUMBER := 20; -- VARIABLE GLOBAL
        Z    NUMBER := 30;
BEGIN
    DBMS_OUTPUT.PUT_LINE('Primer Bloque. X = ' || X);
    DECLARE
        X    NUMBER := 10; -- VARIABLE LOCAL
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Segundo bloque. X = ' || x);
        DBMS_OUTPUT.PUT_LINE('Segundo bloque. Z = ' || Z);
    END;
    DBMS_OUTPUT.PUT_LINE('Primer bloque. X = ' || X);
END;