-- loadflights.sql

DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS friend;
DROP TABLE IF EXISTS rating;


CREATE TABLE movie (
  movie varchar(30)  NOT NULL,
  mid varchar(2) PRIMARY KEY
  );
  
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/movie.csv' 
INTO TABLE movie 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE friend (
  friend char(2),
  fid varchar(2)
  );
  
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/friend.csv' 
INTO TABLE friend
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

CREATE TABLE rating (
mid varchar(2),
fid varchar(2),
rating integer
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/rating.csv' 
INTO TABLE rating
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


SET SQL_SAFE_UPDATES = 0;

SELECT 'movie', COUNT(*) FROM movie
  UNION
SELECT 'friend', COUNT(*) FROM friend
  UNION
SELECT 'rating', COUNT(*) FROM rating ; 

