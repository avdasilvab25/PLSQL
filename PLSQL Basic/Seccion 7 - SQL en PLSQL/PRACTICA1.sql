SET SERVEROUTPUT ON
DECLARE
    emp_id          EMPLOYEES.EMPLOYEE_ID%TYPE;
    salario         EMPLOYEES.SALARY%TYPE;
    nombre          EMPLOYEES.FIRST_NAME%TYPE;
    apellido        EMPLOYEES.LAST_NAME%TYPE;
    email           EMPLOYEES.EMAIL%TYPE;
    tlf             EMPLOYEES.PHONE_NUMBER%TYPE;
    hire            EMPLOYEES.HIRE_DATE%TYPE;
    job_id          EMPLOYEES.JOB_ID%TYPE;
    com_pct         EMPLOYEES.COMMISSION_PCT%TYPE;
    manager_id      EMPLOYEES.MANAGER_ID%TYPE;
    dept_id         EMPLOYEES.DEPARTMENT_ID%TYPE;

BEGIN
    SELECT * INTO emp_id, nombre, apellido, email, tlf, hire, job_id, salario, com_pct, manager_id, dept_id
    FROM employees
    WHERE employee_id = 100;
    
    /* SELECT salary INTO salario
    FROM employees
    WHERE employee_id = 100; */
    
    DBMS_OUTPUT.PUT_LINE(salario||' '||nombre);
END;