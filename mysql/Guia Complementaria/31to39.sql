
#30

SELECT CountryCode, LocalName, Region
FROM countrylanguage
INNER JOIN country ON countrylanguage.CountryCode = country.Code
WHERE countrylanguage.Language = 'Spanish'
;

#31

capital se concentre más de la mitad de su población total. (Se esperan 2 columnas y 14 registros). 

select country.name as Pais , city.name as Capital
from country 
inner join city on country.capital = city.ID
where (country.population * 0.5 ) < city.Population;

/*
36. Mostrar según la tabla de países,
 la cantidad total de población, 
la población máxima, 
la población mínima,
 el promedio de población 
 y con cuántos registros de población se cuenta. 
 (Se esperan 5 columnas y 1 registro). 
SELECT SUM(Population), MAX(Population), MIN(Population), AVG(Population),
COUNT(Population)
FROM country;

37. Mostrar según la tabla de países,
 la cantidad total de población, 
 la población máxima, 
 la población mínima y
 el promedio de población,
 por cada continente. (Se esperan 5 columnas y 7 registros). 
SELECT SUM(Population), MAX(Population), MIN(Population), AVG(Population),
COUNT(Population)
FROM country
GROUP BY Continent;

37.5
Mostrar según la tabla de países, 
la cantidad total de población,
 la población 
máxima, la población mínima y 
el promedio de población,
 por cada continente, de los
 continentes que tienen
 poblacion >10.000 (Se esperan 5 columnas y 6 registros). 
SELECT SUM(Population), MAX(Population), MIN(Population), AVG(Population),
COUNT(Population)
FROM country
WHERE Population >10000
GROUP BY Continent
;

38. Agrupar a todos los países según el continente al que pertenecen.
Mostrar los continentes junto 
a la cantidad de naciones
que pertenecen a cada uno. 
(Se esperan 2 columnas y 7 registros). 
SELECT Name,Continent
FROM country
GROUP by Continent;

#39
SELECT countryCode, SUM(city.Population) as Poblacion
FROM city
GROUP BY city.CountryCode;

*/




