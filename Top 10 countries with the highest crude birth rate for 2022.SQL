-- Top 10 countries with the highest crude birth rate for 2022
SELECT country_name
, year
, crude_birth_rate
FROM `bigquery-public-data.census_bureau_international.birth_death_growth_rates` 
WHERE year= 2022
order by 3 desc 
limit 10
