USE codeup_test_db;


SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Albums released after 1991';
DELETE FROM albums WHERE release_date > 1991;
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Disco genre';
DELETE FROM albums WHERE genre = 'disco';
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Albums by Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';

