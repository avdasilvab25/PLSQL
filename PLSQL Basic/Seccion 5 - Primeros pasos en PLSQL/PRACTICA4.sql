SET SERVEROUTPUT ON
DECLARE
    X       NUMBER;
    Z       NUMBER          := 10;
    A       VARCHAR2(100)   := 'EXAMPLE';
    D       DATE            := '10-01-1990';
BEGIN
    DBMS_OUTPUT.PUT_LINE(Z + 10);
    DBMS_OUTPUT.PUT_LINE(A || ' HELLO');
    DBMS_OUTPUT.PUT_LINE(D);
    DBMS_OUTPUT.PUT_LINE(SYSDATE);
    DBMS_OUTPUT.PUT_LINE(A || Z);
END;