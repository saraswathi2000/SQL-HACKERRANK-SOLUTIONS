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

Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates. */

SELECT DISTINCT City
FROM Station
WHERE RIGHT(City, 1) IN ('a', 'e', 'i', 'o', 'u','A','E','I','O','U');

--                   OR

SELECT DISTINCT CITY
FROM STATION
WHERE CITY RLIKE '[aeiouAEIOU]$'


