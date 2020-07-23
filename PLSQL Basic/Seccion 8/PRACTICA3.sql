SET SERVEROUTPUT ON
DECLARE
    MI_EXCEP        EXCEPTION;
    PRAGMA          EXCEPTION_INIT(MI_EXCEP, -937); -- ASOCIA MI_EXCEP CON EL CÓDIGO 937    
    V1              NUMBER;
    V2              NUMBER;
BEGIN
    SELECT employee_id, SUM(salary) INTO v1, v2 FROM employees;
    DBMS_OUTPUT.PUT_LINE(v1);
    
    EXCEPTION
        WHEN MI_EXCEP THEN
            DBMS_OUTPUT.PUT_LINE('ERROR. FUNCIÓN DE GRUPO INCORRECTA');
        WHEN OTHERS THEN    -- cuando ocurran otras excepciones que no sean las de arriba
            NULL;
END;