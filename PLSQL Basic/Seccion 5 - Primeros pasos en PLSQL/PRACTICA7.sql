SET SERVEROUTPUT ON
DECLARE
    X       VARCHAR2(50)    :=  'HELLO';
    MAYUS   VARCHAR2(100);
    FECHA   DATE;
    Z       NUMBER          :=  109.80;
BEGIN
    X := 'ejemplo';
    DBMS_OUTPUT.PUT_LINE(SUBSTR(X,1,3));
    MAYUS := UPPER(X);
    DBMS_OUTPUT.PUT_LINE(MAYUS);
    FECHA := SYSDATE;
    DBMS_OUTPUT.PUT_LINE(FECHA);
    DBMS_OUTPUT.PUT_LINE(FLOOR(Z));
END;