SET SERVEROUTPUT ON
DECLARE
    empleado        EMPLOYEES%ROWTYPE;
BEGIN
    SELECT * INTO empleado
    FROM employees
    WHERE employee_id = 100;
    
    DBMS_OUTPUT.PUT_LINE(empleado.salary);
    
    EXCEPTION
        WHEN EXCEPTION1 THEN
            NULL;
        WHEN EXCEPTION2 THEN
            NULL;
        WHEN OTHERS THEN    -- cuando ocurran otras excepciones que no sean las de arriba
            NULL;
END;