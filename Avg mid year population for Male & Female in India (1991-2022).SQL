--Avg mid year population for Male & Female in India (1991-2022)
SELECT country_name
,year
, avg(midyear_population_female) as avgmidyear_population_female
, avg(midyear_population_male) as avgmidyear_population_male
FROM `bigquery-public-data.census_bureau_international.midyear_population_5yr_age_sex` 
where country_name= 'India' 
and
year between 1991 and 2022
group by country_name, year
