
--Changing the rating of a movie
UPDATE "Movie"
SET rating = 'pg'
WHERE movie_id = 1;

--Adding YEAR column
ALTER TABLE "Movie"
ADD "YEAR" INTEGER;

SELECT *
FROM "Movie";

--Adding values to year column (is there a quicker way to do this?)
UPDATE "Movie"
SET "YEAR" = '2012'
WHERE movie_id = 1;

UPDATE "Movie"
SET "YEAR" = '1999'
WHERE movie_id = 2;

UPDATE "Movie"
SET "YEAR" = '2003'
WHERE movie_id = 3;

UPDATE "Movie"
SET "YEAR" = '2022'
WHERE movie_id = 4;

SELECT *
FROM "Movie";