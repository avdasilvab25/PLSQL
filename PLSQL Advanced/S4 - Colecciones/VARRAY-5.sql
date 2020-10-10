CREATE TABLE PRUEBA (
    C1 NUMBER,
    C2 DATO,
    C3 VARCHAR2(60)
);

DESC DATO;
DESC PRUEBA;
SELECT * FROM USER_TYPES;
SELECT * FROM USER_VARRAYS;


INSERT INTO PRUEBA VALUES (100, DATO('UNO', 'DOS'), 'EJEMPLO');
INSERT INTO PRUEBA VALUES (100, DATO('AA', 'BB', 'CC', 'DD'), 'EJEMPLO');


SELECT C2 FROM PRUEBA;

-- OPERADOR TABLE PARA ACCEDER AL VARRAY DE UNA TABLA.
-- EL VARRAY ES UNA TABLA EMBEBIDA EN LA TABLA ORIGINAL
SELECT C1, T2.*, C3
FROM PRUEBA, TABLE(PRUEBA.C2) T2; -- TABLE(NOMBRE_DE_LA_TABLA.ATRIBUTO_VARRAY) ALIAS