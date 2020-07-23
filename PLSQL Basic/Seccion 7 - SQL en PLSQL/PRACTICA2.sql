SET SERVEROUTPUT ON
DECLARE
    salario         EMPLOYEES.SALARY%TYPE;
    empleado        EMPLOYEES%ROWTYPE;
BEGIN
    SELECT * INTO empleado
    FROM employees
    WHERE employee_id = 100;
    
    DBMS_OUTPUT.PUT_LINE(empleado.salary);
END;