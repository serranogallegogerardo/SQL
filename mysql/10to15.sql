
/*
Listar nombre y continente de los cien 
países con mayor expectativa de vida. 
Si hubiera países que tengan la misma 
expectativa de vida, mostrar primero 
a los de menor superficie.
 (Se esperan 2 columnas y 100 registros). 
 
 SELECT Name,Continent,LifeExpectancy,SurfaceArea FROM country
ORDER BY LifeExpectancy DESC, SurfaceArea ASC
LIMIT 100;

Listar todos los datos de los países 
que no cuenten con habitantes. 
(Se esperan 15 columnas y 7 registros). 
SELECT * FROM country Where Population = 0;

 Listar todos los datos de los países cuya
 expectativa de vida supere los setenta y 
 cinco años, ordenados bajo este concepto
 de forma ascendente. (Se esperan 15 columnas y 62 registros). 
SELECT * FROM country Where country.LifeExpectancy > 75
ORDER BY LifeExpectancy;

Listar todos los datos de los países cuya independencia
 haya ocurrido a partir de la segunda mitad del siglo XIX(enero 1801)
 y su forma de gobierno sea una monarquía constitucional. 
 (Se esperan 15 columnas y 20 registros). 

SELECT * FROM country
 Where 
GovernmentForm = 'Constitutional Monarchy'
AND (IndepYear BETWEEN 1850 AND 2022)
;
Listar todos los datos de los países cuyo nombre 
registrado coincida con su 
nombre local. (Se esperan 15 columnas y 100 registros). 
SELECT Name
FROM country
WHERE Name = LocalName;
*/

