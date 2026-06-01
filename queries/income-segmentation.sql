SELECT
  CASE
    WHEN Income < 30000 THEN 'Low'
    WHEN Income < 70000 THEN 'Medium'
    ELSE 'High'
  END AS income_group,
  COUNT(*) AS customers,
  ROUND(AVG(AdSpend),2) AS avg_spend,
  ROUND(AVG(Conversion)*100,2) AS conversion_percent
FROM digital_marketing_campaign.dataset
GROUP BY income_group
ORDER BY income_group;