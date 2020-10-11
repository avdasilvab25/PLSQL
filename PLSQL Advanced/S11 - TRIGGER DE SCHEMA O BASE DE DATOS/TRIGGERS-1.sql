CREATE TABLE CONTROL_LOG
(
    EVENTO VARCHAR2(100),
    FECHA DATE DEFAULT SYSDATE
);
/

-- ESTE TRIGGER SE DISPARA PARA CUALQUIER OBJETO DE HR
CREATE OR REPLACE TRIGGER BORRAR_OBJETO
AFTER DROP
ON SCHEMA -- SE DEBE INDICAR ESTO PARA QUE SE DISPARE SOBRE EL SCHEMA EN EL QUE SE EST� TRABAJANDO
BEGIN
    INSERT INTO CONTROL_LOG (EVENTO) VALUES ('HEMOS BORRADO UN OBJETO A NIVEL DE SCHEMA LLAMADO ' || ORA_DICT_OBJ_NAME || ' DE TIPO ' || ORA_DICT_OBJ_TYPE || ' QUE PERTENECE AL USUARIO ' || ORA_DICT_OBJ_OWNER);
END;
/

CREATE TABLE P1 (CODIGO NUMBER);

DROP TABLE P1;

SELECT * FROM CONTROL_LOG;

GRANT ALL ON CONTROL_LOG TO SYSTEM; -- LE OTORGO PERMISOS A SYSTEM SOBRE LA TABLA CONTROL LOG
