--Average Life expectancy in India
SELECT country_name
, avg(life_expectancy) as avg_life_expectancy
,avg(life_expectancy_male) as avg_life_expectancy_male
,avg(life_expectancy_female) as avg_life_expectancy_female 
FROM `bigquery-public-data.census_bureau_international.mortality_life_expectancy`
where country_name= 'India'
group by country_name
