/*
Case statement allows you to use condition to determine how the result should be calculated.
*/

/* MYSQL QUERY:
SELECT
    title,
CASE
    WHEN rental_duration<=40 THEN 'rental_to_short'
    WHEN rental_rate>=3.99 THEN 'too_expensive'
    WHEN rating IN ('NC-17','R') THEN 'too_adult'
    WHEN length NOT BETWEEN 60 AND 90 THEN 'too_short_or_too_long'
    WHEN description LIKE %shark% THEN 'nope_ha_shark'
    ELSEm'GREAT_movie_for_niece'
 END AS 'fit_for_recommendation'
FROM film
*/

show databases;
use world;
select * from country;
select SurfaceArea from country order by SurfaceArea;

SELECT
      name,
CASE
    WHEN population<=500000 THEN 'Less_population'
    WHEN Lifeexpectancy>=70 THEN 'Long_life_expectancy'
    WHEN SurfaceArea BETWEEN 1000000 AND 2000000 THEN 'Median_surface_area'
    WHEN Region LIKE '%and%' THEN 'Duplicate_Region'
    WHEN Region='Caribbean' THEN 'HERO'
    ELSE 'Chetan and sachin are the KINGS of that Region'
END AS Classification_of_the_countries
from country;
