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
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. */

SELECT DISTINCT CITY 
FROM STATION 
WHERE SUBSTRING(CITY,1,1) IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U');

--                   (OR)


SELECT DISTINCT CITY 
FROM STATION 
WHERE LEFT(CITY,1) IN ('a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U');

--                   (OR)

SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) RLIKE '^[aeiouAEIOU]';
