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
    WHERE name = 'Germany')*100), '%') FROM world WHERE continent = 'Europe'


SELECT name FROM world
 WHERE gdp > ALL(SELECT gdp FROM world
                          WHERE gdp>0 and continent = 'Europe')


SELECT continent, name, area FROM world x
  WHERE area >= ALL
    (SELECT area FROM world y
        WHERE y.continent=x.continent
          AND area>0)


SELECT continent, name from world x
    WHERE name <= All(select name from world y where x.continent = y.continent) 


SELECT name, continent, population FROM world 
    WHERE continent IN (SELECT continent FROM world  x WHERE 25000000 >= (SELECT MAX(population) FROM world y 
        WHERE x.continent = y.continent))


SELECT name, continent from world x 
    WHERE population > All(select 3*population from world y 
        WHERE x.continent = y.continent and x.name <> y.name)

