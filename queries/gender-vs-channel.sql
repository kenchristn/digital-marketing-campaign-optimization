SELECT
  Gender,
  CampaignChannel,
  COUNT(*) AS customers,
  ROUND(AVG(Conversion)*100,2) AS conversion_percent
FROM digital_marketing_campaign.dataset
GROUP BY Gender, CampaignChannel
ORDER BY Gender, conversion_percent DESC;