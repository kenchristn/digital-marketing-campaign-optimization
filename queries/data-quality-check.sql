SELECT
  COUNT(*) AS total_rows,
  COUNT(DISTINCT CustomerID) AS unique_customers,
  COUNTIF(Conversion = 1) AS converted_customers,
  ROUND(AVG(Conversion) * 100, 2) AS conversion_percentage
FROM `digital_marketing_campaign.dataset`;