SELECT
  CampaignChannel,
  CampaignType,
  ROUND(AVG(Conversion)*100,2) AS conversion_percent,
  ROUND(AVG(AdSpend),2) AS avg_spend,
  COUNT(*) AS customers
FROM digital_marketing_campaign.dataset
GROUP BY CampaignChannel, CampaignType
HAVING COUNT(*) > 100
ORDER BY conversion_percent DESC
LIMIT 10;