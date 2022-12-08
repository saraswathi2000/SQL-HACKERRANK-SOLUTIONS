/* Query the names of all American cities in CITY with populations larger than 120000. The CountryCode for America is USA.

The CITY table is described as follows: 
+-------------+----------+
| Field       | Type     |
+-------------+----------+
| ID          | int(11)  |
| Name        | char(35) |
| CountryCode | char(3)  |
| District    | char(20) |
| Population  | int(11)  |
+-------------+----------+
 */
 
SELECT NAME FROM CITY 
WHERE COUNTRYCODE = 'USA' AND POPULATION  > 120000;

 
 
 
