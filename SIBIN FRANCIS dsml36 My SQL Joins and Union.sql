SELECT * FROM Country;
SELECT * FROM Persons;

# 1)Perform inner join, Left join, and Right join on the tables.

# INNER JOIN

SELECT Country.Id, Persons.Fname, Persons.Lname, Persons.Rating,Country.Country_name
FROM Country INNER JOIN Persons ON Country.Id = Persons.Country_Id;

# LEFT JOIN

SELECT Country.Id, Persons.Fname, Persons.Lname, Persons.Rating,Country.Country_name
FROM Country LEFT JOIN Persons ON Country.Id = Persons.Country_Id;

# RIGHT JOIN

SELECT Country.Id, Persons.Fname, Persons.Lname, Persons.Rating,Country.Country_name
FROM Country RIGHT JOIN Persons ON Country.Id = Persons.Country_Id;

# 2)List all distinct country names from both the Country and Persons tables

SELECT DISTINCT Country_name FROM Country
UNION 
SELECT DISTINCT Country_name FROM Persons;

# 3)List all country names from both the Country and Persons tables, including duplicates

SELECT DISTINCT Country_name FROM Country
UNION ALL
SELECT DISTINCT Country_name FROM Persons;

# 4)Round the ratings of all persons to the nearest integer in the Persons table.

SELECT Id, Fname, Lname, round(Rating,0) AS Rounded_Rating FROM Persons;




