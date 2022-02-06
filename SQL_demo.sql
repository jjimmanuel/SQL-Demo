CREATE TABLE people ( 
  FirstName varchar(256),
  LastName varchar(256),
  Age int,
  Occupation varchar(256),
  City varchar(256), 
  Country varchar(256)
  ); 
  
CREATE TABLE zipcode (
  Country varchar(256),
  ZIP int
  ); 
  
INSERT INTO people
  (FirstName, LastName, Age, Occupation, City, Country)
VALUES 
  ('Adam', 'Smith', '25', 'Economist', 'Edinburgh', 'United Kingdom'), 
  ('Milton', 'Friedman', '50', 'Economist', 'New York', 'United States'), 
  ('Thomas', 'Aquinas', '45', 'Theologian', 'Rome', 'Italy'), 
  ('Albert', 'Einstein', '60', 'Physicist', 'New York', 'United States')
  
INSERT INTO zipcode 
  (Country, ZIP)
VALUES 
  ('United Kingdom', '12345'), 
  ('United States', '02468'), 
  ( 'Italy', '13579'), 
  ('United States', '67890')
  
  
SELECT FirstName from people WHERE Age < 30; 
SELECT * from people WHERE Occupation = 'Theologian';
SELECT LastName from people ORDER BY LastName desc; 
SELECT Age, Occupation from people WHERE Age > 30 OR Occupation = 'Economist'; 
SELECT Age, Occupation from people WHERE Age > 30 AND Occupation = 'Economist';

select sum(Age) from people; 
select avg(Age) from people; 
select min(Age) from people; 
select max(Age) from people; 

select count(City), Occupation from people group by Occupation; 


SELECT * from people 
  JOIN zipcode 
    ON people.Country = zipcode.Country