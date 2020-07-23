SET SERVEROUTPUT ON
DECLARE
    empleado        EMPLOYEES%ROWTYPE;
BEGIN
    SELECT * INTO empleado
    FROM employees
    WHERE employee_id = 10;
    
    DBMS_OUTPUT.PUT_LINE(empleado.salary);
    
    EXCEPTION
    --  NO_DATA_FOUND
    --  TOO_MANY_ROWS   -- Muchas filas para un solo objeto
    --  ZERO_DIVIDE
    --  DUP_VAL_ON_CHECK
    
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('ERROR. EMPLEADO INEXISTENTE');
        WHEN OTHERS THEN    -- cuando ocurran otras excepciones que no sean las de arriba
            NULL;
END;