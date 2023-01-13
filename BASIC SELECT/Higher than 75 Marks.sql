/* The STUDENTS table is described as below:

+-------------+----------+
| Column      | Type     |
+-------------+----------+
| ID          | int(11)  |
| Name        | char(35) |
| Marks       | int(3)   |
+-------------+----------+

Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by last three characters of each name.
If two or more students both have names that are ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID. */

SELECT NAME FROM STUDENTS 
WHERE MARKS>75 
ORDER BY RIGHT(NAME,3),ID;
