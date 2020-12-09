SELECT name, continent, population 
  FROM world


SELECT name FROM world
  WHERE population > 200000000


SELECT name, GDP/population from world 
  WHERE population > 200000000


SELECT name, population/1000000 from world
  WHERE continent = 'South America'


SELECT name, population from world
  WHERE name = 'France' or name = 'Germany' or name = 'Italy'


SELECT name from world 
  WHERE name like '%United%'


SELECT name, population, area from world 
  WHERE area > 3000000 or population > 250000000


SELECT name, population, area from world
  WHERE area > 3000000 xor population > 250000000


SELECT name, Round(population/1000000,2), Round(GDP/1000000000, 2)
  from world where continent = 'South America'


SELECT name, Round(GDP/population,-3)
  from world
  where GDP > 1000000000000


SELECT name,  capital FROM world
 WHERE length(name) = length(capital)


SELECT name, capital
FROM world
where LEFT(name,1) = LEFT(capital,1) and name <> capital



SELECT name FROM world
where name LIKE '%a%' and name like '%e%' and name like '%i%' and name like '%o%' and name like '%u%' and name not like '% %'
