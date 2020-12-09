SELECT yr, subject, winner FROM nobel
  WHERE yr = 1950


SELECT winner FROM nobel
  WHERE yr = 1962 AND subject = 'Literature'


SELECT yr, subject from nobel 
  WHERE winner = 'Albert Einstein'


SELECT winner from nobel 
  WHERE yr > 1999 and subject ='Peace'


SELECT yr, subject, winner from nobel 
  WHERE subject='Literature' and yr between 1980 and 1989


SELECT * FROM nobel WHERE winner IN 
('Theodore Roosevelt',
'Woodrow Wilson',
'Jimmy Carter',
'Barack Obama')


SELECT winner from nobel WHERE winner like 'john%'


SELECT yr, subject, winner from nobel 
  WHERE subject='physics' and yr=1980 or subject='chemistry' and yr=1984


SELECT * from nobel 
  WHERE yr=1980 and subject <> 'Chemistry' and subject <> 'Medicine'


SELECT yr, subject, winner from nobel 
  WHERE subject='Medicine' and yr<1910 or subject='Literature' and yr>=2004


SELECT * from nobel WHERE winner = 'PETER GRÜNBERG'


SELECT * from nobel WHERE winner = 'EUGENE O''NEILL'


SELECT winner,yr,subject from nobel WHERE winner Like 'Sir%'


SELECT winner, subject FROM nobel
 WHERE yr=1984
 ORDER BY 
 subject IN ('Physics','Chemistry'),subject,winner

