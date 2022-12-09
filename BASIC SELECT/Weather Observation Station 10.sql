/* The STATION table is described as follows:

+-------------+------------+
| Field       |   Type     |
+-------------+------------+
| ID          | INTEGER    |
| CITY        | VARCHAR(21)|
| STATE       | VARCHAR(2) |
| LAT_N       | NUMERIC    |
| LONG_W      | NUMERIC    |
+-------------+------------+

Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.*/

SELECT DISTINCT CITY FROM STATION 
WHERE RIGHT(CITY,1) NOT IN ('A','E','I','O','U','a','e','i','o','u'); 


--                            (or)


SELECT DISTINCT CITY FROM STATION 
WHERE (UPPER(SUBSTR(CITY, LENGTH(CITY), 1)) NOT IN ('A','E','I','O','U') AND 
LOWER(SUBSTR(CITY, LENGTH(CITY),1)) NOT IN ('a','e','i','o','u'));


--                             (OR)

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT RLIKE '[aeiouAEIOU]$';

