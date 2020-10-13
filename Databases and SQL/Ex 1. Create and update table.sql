--0. Drop the table. 
DROP TABLE INSTRUCTOR;
--1. Create a new table.
CREATE TABLE INSTRUCTOR(
    INS_ID INTEGER NOT NULL,
    LASTNAME VARCHAR(20) NOT NULL,
    FIRSTNAME VARCHAR(20) NOT NULL,
    CITY VARCHAR(20),
    COUNTRY CHAR(2),
    PRIMARY KEY(INS_ID)
  );

--2A. Insert a row into the DB
INSERT
  INTO INSTRUCTOR
(INS_ID, LASTNAME, FIRSTNAME, CITY, COUNTRY)
  VALUES
(1,'Ahuja','Rav','Toronto','CA');

--2B. Insert two new rows into the DB
INSERT
  INTO INSTRUCTOR
(INS_ID, LASTNAME, FIRSTNAME, CITY, COUNTRY)
  VALUES
(2,'Chong', 'Raul', 'Toronto','CA') ,
(3,'Vasudevan','Hima','Chicago','US');

--3. Select all rows from the DB
SELECT *
  FROM INSTRUCTOR;
  
--3B. Select lastname, firstname, conutry where city is Toronto
SELECT LASTNAME, FIRSTNAME, COUNTRY
  FROM INSTRUCTOR
  WHERE CITY = 'Toronto';
  
  --4. Change city for Rav from Toronto to Markham
  UPDATE INSTRUCTOR
  SET CITY='Markham'
  WHERE FIRSTNAME='Rav';
  
  --5A. Delete row for raul chong
  DELETE FROM INSTRUCTOR
  WHERE ins_id=2;
  
  --5B.
  SELECT * FROM INSTRUCTOR;
