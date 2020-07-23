SET SERVEROUTPUT ON
DECLARE
    CURSOR C1(SAL number) IS SELECT * FROM EMPLOYEES WHERE SALARY > SAL;
    empl EMPLOYEES%ROWTYPE;
BEGIN
    OPEN C1(18000);
    LOOP
        FETCH C1 INTO EMPL;
        EXIT WHEN C1%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(EMPL.FIRST_NAME||' '||EMPL.SALARY);
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('He encontrado '||c1%rowcount||' empleados');
    CLOSE C1;
END;