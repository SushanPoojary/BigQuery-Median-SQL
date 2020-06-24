SELECT
  Year,
  fhoffa.x.median(ARRAY_AGG( Personal_income)) AS Median_Personal_income,
  fhoffa.x.median(ARRAY_AGG( Wages_and_salaries)) AS Median_Wages_and_salaries,
  fhoffa.x.median(ARRAY_AGG( Population)) AS Median_Population,
  fhoffa.x.median(ARRAY_AGG( Total_employment)) AS Median_Total_employment
FROM
  `bigquery-public-data.sdoh_bea_cainc30.fips`
GROUP BY
  Year
ORDER BY
  Year