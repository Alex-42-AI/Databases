SELECT m.title, m.year
FROM Movie m
         JOIN MovieExec me ON m.producerc# = me.cert#
WHERE m.length > 120
  AND me.networth BETWEEN 10e8 AND 2 * 10e8;
