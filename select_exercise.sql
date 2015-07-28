USE codeup_test_db;


SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Pink Floyd albums';
SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Release date of Sgt. Pepper''s';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Genre of "Nevermind"';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Released in the 90s';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Sold less than 20 million';
SELECT name FROM albums WHERE sales < 20;
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Rock genre';
SELECT name FROM albums WHERE LOCATE('rock', genre) != 0;
