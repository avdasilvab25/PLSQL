SET SERVEROUTPUT ON
DECLARE
TYPE EMPLEADOS IS TABLE OF 
    EMPLOYEES%ROWTYPE
INDEX BY PLS_INTEGER;

EMPLS EMPLEADOS;
BEGIN
SELECT * INTO EMPLS(1) FROM EMPLOYEES WHERE EMPLOYEE_ID = 100;
DBMS_OUTPUT.PUT_LINE(EMPLS(1).FIRST_NAME);
END;