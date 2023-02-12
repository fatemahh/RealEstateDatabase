LOAD DATA LOCAL INFILE 'C:/Users/LP/Downloads/AppUser.csv"																																																																																																																				.csv"'
INTO TABLE appuser
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


LOAD DATA LOCAL INFILE 'C:/Users/LP/Downloads/AppUserFocus.csv"																																																																																																																				.csv"'
INTO TABLE appuserfocus
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

