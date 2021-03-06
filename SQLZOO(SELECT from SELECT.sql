/*
Fourth section of sqlzoo, SELECT from SELECT
*/


--#1
/*
List each country name where the population is larger than that of 'Russia'. 
*/
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')


--#2
/*
Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
*/
SELECT name
FROM world
  WHERE continent ='Europe' AND
  gdp/population>38555.0739

--#3
/*
List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.
*/
SELECT name, continent
FROM world
WHERE continent IN (SELECT continent FROM world WHERE name IN ('Argentina', 'Australia'))
ORDER BY name


--#4
/*
Which country has a population that is more than Canada but less than Poland? Show the name and the population.
*/
SELECT name, population
FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Canada')
AND population < (SELECT population FROM world WHERE name = 'Poland')

--#5
/*
Germany (population 80 million) has the largest population of the countries in Europe. Austria (population 8.5 million) has 11% of the population of Germany.

Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.
*/
SELECT name,
       CONCAT(ROUND(100*population/(SELECT  population
                         FROM world
                         WHERE name='Germany'))
                    , '%')
FROM world
WHERE continent='Europe'
--#6
/*
Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
*/

--#7
/*
Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
*/

--#8
/*
Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
*/

--#9
/*
Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
*/

--#10
/*
Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.
*/