
/*
#create database BDtest; crear
#drop database datosgera; borrar
#CREATE TABLE nombre ( nombre tipo prioridad, nombre tipo prioridad);
#Insertar dentro Nombre_tabla VALUES ('4', 'Pedro)
#select id from tabla where variable = valor
#select from BD.tabla
*/

use bdtest;
CREATE TABLE persona ( id INT PRIMARY KEY, nombre VARCHAR(20) );

INSERT INTO persona VALUES ( 1, 'Will' );
INSERT INTO persona VALUES ( 2, 'Marry' );
INSERT INTO persona VALUES ( 3, 'Dean' );
SELECT id, nombre FROM persona WHERE id = 1;
