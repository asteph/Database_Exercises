USE codeup_test_db;


SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'All albums';
SELECT * FROM albums;
UPDATE albums
SET sales = sales * 10;
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'All albums';
SELECT * FROM albums;
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Released before 1980';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = 1901
WHERE release_date < 1980;
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Released before 1980';
SELECT * FROM albums WHERE release_date < 1980;
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Michael Jackson albums';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson' 
WHERE artist = 'Michael Jackson';
SELECT '------------------------------' AS '';
SELECT '------------------------------' AS 'Peter Jackson albums';
SELECT * FROM albums WHERE artist = 'Peter Jackson';

