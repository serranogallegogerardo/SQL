# Listar todos los datos

de los países donde no se

# cuente con datos acerca de su independencia.

# (Se esperan 15 columnas y 47 registros).


SELECT FROM country WHERE IndepYear IS Null;

# Listar todos los datos de los países cuyo


 #nombre comience y termine con 'A'. # (Se esperan 15 columnas y 13 registros).


SELECT FROM country as c
WHERE c.Name LIKE "AX";

# Listar todos los datos de los países cuyo nombre sea compuesto # (más de una palabra). (Se esperan 15 columnas y 66 registros).

SELECT FROM country as c

WHERE c.Name LIKE "%%";

#Listar todos los datos de las ciudades cuyo nombre of

#distrito contengan un (guión medio).

# (Se esperan 5 columnas y 372 registros).

SELECT FROM city as C WHERE c.Name LIKE "X-X OR c.District LIKE "-";