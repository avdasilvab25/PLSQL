ALTER SESSION SET PLSQL_CODE_TYPE = 'INTERPRETED';
/

CREATE OR REPLACE PROCEDURE N1 AS
V VARCHAR2(1000) := 'A';
X DATE;
Z VARCHAR2(1000);
BEGIN
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(SYSDATE, 'mi:ss'));

    FOR I IN 1..100000 LOOP
        FOR X IN 1..15 LOOP
            V := 'A' || SUBSTR('AAAAAA', 1, 5);
        END LOOP;
    END LOOP;
    
    DBMS_OUTPUT.PUT_LINE(TO_CHAR(SYSDATE, 'mi:ss'));
END;
/

SELECT * FROM USER_PLSQL_OBJECT_SETTINGS WHERE NAME = 'N1';

EXECUTE N1();

