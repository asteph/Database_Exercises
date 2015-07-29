USE codeup_test_db;


SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Albums released after 1991';
SELECT * FROM albums WHERE release_date > 1991;
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Disco genre';
SELECT * FROM albums WHERE genre = 'disco';
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Albums by Whitney Houston';
SELECT * FROM albums WHERE artist = 'Whitney Houston';

