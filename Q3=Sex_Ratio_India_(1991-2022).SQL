--Sex ratio of India (1991-2022)
SELECT 
country_name
, year
, sex_ratio_at_birth FROM `bigquery-public-data.census_bureau_international.age_specific_fertility_rates` 
where country_name= 'India'
and year between 1991 and 2022
