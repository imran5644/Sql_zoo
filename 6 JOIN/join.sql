SELECT matchid, player FROM goal 
  WHERE  teamid = 'GER'


SELECT id,stadium,team1,team2
  FROM game where id = 1012


SELECT player, teamid, stadium, mdate 
  FROM game JOIN goal ON (id=matchid)
 where teamid = 'GER'


SELECT team1,team2,player
  FROM game JOIN goal ON (id=matchid)
 where player like 'mario%'


SELECT player, teamid,coach, gtime
  FROM goal join eteam ON (id=teamid)
 WHERE gtime<=10


 SELECT mdate, teamname
  FROM game join eteam ON (team1=eteam.id)
 WHERE coach='Fernando Santos' 


SELECT player FROM goal join game ON (id=matchid)
 WHERE stadium = 'National Stadium, Warsaw'


SELECT Distinct player
  FROM game JOIN goal ON matchid = id 
    WHERE (team1='GER' OR team2='GER') AND teamid != 'GER'


SELECT teamname, count(*)
  FROM eteam JOIN goal ON id=teamid
 Group BY teamname


SELECT stadium, count(*) from game
  Join goal On (game.id = matchid) group by stadium


SELECT matchid,mdate, COUNT(*)
  FROM game JOIN goal ON matchid = id 
 WHERE (team1 = 'POL' OR team2 = 'POL') GROUP BY matchid, mdate;


SELECT matchid, mdate, COUNT(*) 
  FROM goal JOIN game ON id = matchid 
 WHERE (team1 = 'GER' OR team2 = 'GER') AND teamid = 'GER' GROUP BY matchid, mdate;


SELECT mdate, team1, SUM(CASE WHEN teamid = team1 THEN 1 ELSE 0 END) AS score1, team2,
    SUM(CASE WHEN teamid = team2 THEN 1 ELSE 0 END) AS score2 FROM
    game LEFT JOIN goal ON (id = matchid)
    GROUP BY mdate,team1,team2
    ORDER BY mdate, matchid, team1, team2