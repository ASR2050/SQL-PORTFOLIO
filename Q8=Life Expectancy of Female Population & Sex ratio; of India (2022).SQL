--Life Expectancy of Female Population & Sex ratio; of India (2022)
SELECT 
FemaleMortalityRate.country_name
, FemaleMortalityRate.year
, FemaleMortalityRate.life_expectancy_female
, SexRatio.sex_ratio_at_birth
  FROM (
      SELECT country_name
      , year
      , life_expectancy_female
      FROM  `bigquery-public-data.census_bureau_international.mortality_life_expectancy` 
      where country_name= 'India'
      and year = 2022) FemaleMortalityRate
left JOIN  (
    SELECT country_name
    , sex_ratio_at_birth
    , year
    FROM `bigquery-public-data.census_bureau_international.age_specific_fertility_rates`
    where year= 2022) SexRatio
on FemaleMortalityRate.country_name = SexRatio.country_name
