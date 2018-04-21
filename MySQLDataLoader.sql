USE CONFERENCE_REVIEW;

DELETE FROM AUTHORSHIP WHERE TRUE;
DELETE FROM AUTHOR WHERE TRUE;

LOAD DATA LOCAL INFILE 'genfiles/authors.csv'
INTO TABLE AUTHOR
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(EmailID, FirstName, LastName);

DELETE FROM PAPER WHERE TRUE;

LOAD DATA LOCAL INFILE 'genfiles/papers.csv'
INTO TABLE PAPER
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(ID, FileName, Topic);

DELETE FROM AUTHORSHIP WHERE TRUE;

LOAD DATA LOCAL INFILE 'genfiles/authorships.csv'
INTO TABLE AUTHORSHIP
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
(AuthorEmailID, PaperID);
