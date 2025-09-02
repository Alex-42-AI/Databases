UPDATE Movie m
SET length = length + 10
WHERE studioName IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM StarsIn s
    WHERE s.movieTitle = m.title
    AND s.movieYear = m.year
);
