--Mortality Rates for India (1991-2022)
SELECT country_name
,year
,infant_mortality
,infant_mortality_female
, infant_mortality_male
 FROM `bigquery-public-data.census_bureau_international.mortality_life_expectancy` 
 where country_name= 'India'
 and year between 1991 and  2022
