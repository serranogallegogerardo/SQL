SELECT * FROM world.country;

/*
26. Listar los nombres de los países sudamericanos junto a los nombres (alias 
'Capital') de sus capitales. (Se esperan 2 columnas y 14 registros). 
SELECT country.Name, city.Name
FROM country 
INNER JOIN city ON country.Capital = city.ID
WHERE country.Continent = 'South America';

27. Listar el código de país,
 junto a los nombres de las ciudades
 y su cantidad de habitantes,
 de aquellos cuya 
expectativa de vida sea mayor a 80. 
(Se esperan 3 columnas y  
253 registros). 

SELECT country.Code,city.Name,country.Population
FROM country
INNER JOIN city ON country.Code = city.CountryCode
WHERE country.LifeExpectancy > 80;

28. Listar las capitales de los países
 cuya forma de gobierno sea una República 
Federal. (Se esperan 2 columnas y 15 registros). 
SELECT city.Name, country.GovernmentForm
FROM country
INNER JOIN city ON city.ID = country.Capital
WHERE country.GovernmentForm = 'Federal Republic';

29. Listar los lenguajes oficiales, 
junto al nombre de sus respectivos países, 
donde la cantidad de habitantes de dicho
 país esté entre un millón y tres millones.
 (Se esperan 2 columnas y 14 registros). 

29. Listar los lenguajes oficiales, 
junto al nombre de sus respectivos países, 
donde la cantidad de habitantes de dicho
 país esté entre un millón y tres millones.
 (Se esperan 2 columnas y 14 registros). 
 
SELECT countrylanguage.Language, country.Name
FROM countrylanguage
INNER JOIN country 
ON countrylanguage.CountryCode = country.Code
WHERE 
countrylanguage.IsOfficial = 'T'
AND
(country.Population BETWEEN 1000000 AND 3000000);
*/




