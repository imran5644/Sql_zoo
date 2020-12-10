SELECT SUM(population)
  FROM world


SELECT distinct continent 
  FROM world


SELECT sum(gdp) from world 
  Where continent = 'africa' 


SELECT count(name) from world 
  Where area > 1000000


SELECT sum(population) from world
  Where name ='Estonia' or name = 'Latvia' or name = 'Lithuania'


SELECT continent, count(name) from world 
  Group by continent


SELECT continent, count(name) from world 
  Where population > 10000000 group by continent


SELECT continent from world x 
  Where (select sum(population) from world y where x.continent = y.continent) > 100000000 Group by continent


