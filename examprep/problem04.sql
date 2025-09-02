CREATE VIEW StarStats AS
    SELECT ms.name, COUNT(m.title) AS num_movies, AVG(m.length) AS average
FROM MovieStar ms
LEFT JOIN StarsIn si ON ms.name = si.starName
LEFT JOIN Movie m ON m.title = ms.movieTitle AND m.year = ms.movieYear
GROUP BY ms.name;
