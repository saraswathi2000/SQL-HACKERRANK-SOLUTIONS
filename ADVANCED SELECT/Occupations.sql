/*Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. 
The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.
Occupation will only contain one of the following values: Doctor, Professor, Singer or Actor.*/

set @d=0, @p=0, @s=0, @a=0;

select min(Doctor), min(Professor), min(Singer), min(Actor)
from(
  select case 
            when Occupation='Doctor' then (@d:=@d+1)
            when Occupation='Professor' then (@p:=@p+1)
            when Occupation='Singer' then (@s:=@s+1)
            when Occupation='Actor' then (@a:=@a+1) 
            end as Row,
        case when Occupation='Doctor' then Name end as Doctor,
        case when Occupation='Professor' then Name end as Professor,
        case when Occupation='Singer' then Name end as Singer,
        case when Occupation='Actor' then Name end as Actor
  from OCCUPATIONS
  order by Name
) as temp
group by Row;
