SELECT
  Conversion,
  ROUND(AVG(WebsiteVisits),2) AS avg_visits,
  ROUND(AVG(PagesPerVisit),2) AS avg_pages,
  ROUND(AVG(TimeOnSite),2) AS avg_time_on_site,
  ROUND(AVG(EmailClicks),2) AS avg_email_clicks
FROM `digital_marketing_campaign.dataset`
GROUP BY Conversion;