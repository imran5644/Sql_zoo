SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='russia')


SELECT name from world
WHERE continent = 'Europe' 
And gdp/population > (Select gdp/population from world where name = 'United Kingdom')


SELECT name, continent from world
WHERE continent In (select continent from world
WHERE name = 'Argentina' or name = 'Australia'
) order by name


SELECT name, population FROM world 
WHERE population > (SELECT population FROM world WHERE name = 'Canada') 
AND population < (SELECT population FROM world WHERE name = 'Poland')


SELECT name, CONCAT(ROUND(population/(SELECT population FROM world 
    WHERE name = 'Germany')*100), '%') FROM world WHERE continent = 'Europe';

