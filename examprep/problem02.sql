SELECT me.name, COUNT(m.title) AS num_movies, AVG(m.length) AS average
FROM MovieExec me
         LEFT JOIN Movie m ON me.cert# = m.producerc#
GROUP BY me.name
HAVING num_movies = 0
    OR MAX(m.length) < 90;
