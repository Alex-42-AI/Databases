CREATE TRIGGER MinMovieLength
    BEFORE INSERT ON Movie
    FOR EACH ROW
    BEGIN
        IF NEW.length < 30 THEN
            SET NEW.length = 30;
        END IF;
    END;
