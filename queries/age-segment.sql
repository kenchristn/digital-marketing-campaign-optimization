SELECT
  CASE
    WHEN Age BETWEEN 18 AND 24 THEN '18-24'
    WHEN Age BETWEEN 25 AND 34 THEN '25-34'
    WHEN Age BETWEEN 35 AND 44 THEN '35-44'
    WHEN Age BETWEEN 45 AND 54 THEN '45-54'
    ELSE '55+'
  END AS age_group,
  COUNT(*) AS customers,
  ROUND(AVG(Conversion)*100,2) AS conversion_percent,
  ROUND(AVG(AdSpend),2) AS avg_spend
FROM `digital_marketing_campaign.dataset`
GROUP BY age_group
ORDER BY age_group;