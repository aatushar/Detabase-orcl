SELECT department_name, city
FROM   departments 
NATURAL JOIN (SELECT l.location_id, l.city, l.country_id 
FROM locations l 
JOIN   countries c
ON(l.country_id = c.country_id) 
JOIN regions 
USING(region_id)
WHERE region_name = 'Europe');

select l.location_id, l.city, l.country_id
from loc l
JOIN countries c
on (l.country_id = c.country_id)
join regions using(region_id)
where region_name = 'Europe';