CREATE TABLE IMAGENES (
    CODIGO NUMBER,
    FOTO BFILE
);

SELECT * FROM IMAGENES;

DESC IMAGENES;

DECLARE
    FOTO BFILE;
BEGIN
    FOTO := BFILENAME('FICHEROS', 'LOGO.png');
    INSERT INTO IMAGENES VALUES (1, FOTO);
END;
/

SELECT * FROM IMAGENES;