/* The CITY table is described as follows: 
+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | int(11)  |
| Name        | char(35) |
| CountryCode | char(3)  |
| District    | char(20) |
| Population  | int(11)  |
+-------------+----------+
Query the average population of all the cities in CITY where District is California. */

SELECT AVG(POPULATION) FROM CITY 
WHERE DISTRICT = 'California';
