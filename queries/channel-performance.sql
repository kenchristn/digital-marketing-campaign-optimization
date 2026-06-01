SELECT
  CampaignChannel,
  COUNT(*) AS customers,
  ROUND(AVG(AdSpend),2) AS avg_ad_spend,
  ROUND(AVG(ClickThroughRate)*100,2) AS avg_ctr_percent,
  ROUND(AVG(ConversionRate)*100,2) AS avg_conversion_rate,
  ROUND(AVG(Conversion)*100,2) AS actual_conversion_percent
FROM `digital_marketing_campaign.dataset`
GROUP BY CampaignChannel
ORDER BY actual_conversion_percent DESC;