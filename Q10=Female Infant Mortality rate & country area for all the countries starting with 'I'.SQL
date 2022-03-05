--Female Infant Mortality rate & country area for all the countries starting with 'I'
SELECT A1.country_name
    , A1.year
    , A1.infant_mortality_female
    , A2.country_area

 FROM (
     SELECT country_name
           , year
           , infant_mortality_female
     FROM  `bigquery-public-data.census_bureau_international.mortality_life_expectancy`
     where country_name like "I%"
     and year= 2022) A1

  inner join  (
    select country_name
        ,   country_area
    from `bigquery-public-data.census_bureau_international.country_names_area`) A2

ON A1.country_name = A2.country_name
order by 2 desc
