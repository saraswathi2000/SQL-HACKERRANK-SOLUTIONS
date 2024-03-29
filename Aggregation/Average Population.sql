/* The CITY table is described as below: 
+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | int(11)  |
| Name        | char(35) |
| CountryCode | char(3)  |
| District    | char(20) |
| Population  | int(11)  |
+-------------+----------+
Query the average population for all the cities in CITY, rounded down to the nearest integer. */

SELECT ROUND(AVG(POPULATION))
FROM CITY;
