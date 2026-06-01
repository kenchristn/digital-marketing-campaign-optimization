SELECT
  CASE
    WHEN LoyaltyPoints < 2500 THEN 'Low'
    WHEN LoyaltyPoints < 5000 THEN 'Medium'
    ELSE 'High'
  END AS loyalty_group,
  COUNT(*) AS customers,
  ROUND(AVG(PreviousPurchases),2) AS avg_previous_purchases,
  ROUND(AVG(Conversion)*100,2) AS conversion_percent
FROM digital_marketing_campaign.dataset
GROUP BY loyalty_group
ORDER BY loyalty_group;