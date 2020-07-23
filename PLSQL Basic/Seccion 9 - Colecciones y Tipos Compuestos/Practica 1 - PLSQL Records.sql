SET SERVEROUTPUT ON
DECLARE
    TYPE empleado IS RECORD
        (nombre varchar2(100),
        salario number,
        fecha employees.hire_date%type,
        datos employees%rowtype);
    
    emple1 empleado;
BEGIN
    SELECT * INTO EMPLE1.datos
    FROM employees WHERE employee_id = 100;
    
    emple1.nombre := emple1.datos.first_name;
    emple1.salario := emple1.datos.salary;
    emple1.fecha := emple1.datos.hire_date;
    
    DBMS_OUTPUT.PUT_LINE(emple1.nombre);
    DBMS_OUTPUT.PUT_LINE(emple1.salario);
    DBMS_OUTPUT.PUT_LINE(emple1.fecha);
END;