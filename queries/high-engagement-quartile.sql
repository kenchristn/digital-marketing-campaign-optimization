WITH engagement AS (
  SELECT *,
    NTILE(4) OVER (
      ORDER BY (
        WebsiteVisits +
        PagesPerVisit +
        TimeOnSite +
        EmailClicks
      )
    ) AS engagement_quartile
  FROM digital_marketing_campaign.dataset
)

SELECT
  engagement_quartile,
  COUNT(*) AS customers,
  ROUND(AVG(Conversion)*100,2) AS conversion_percent
FROM engagement
GROUP BY engagement_quartile
ORDER BY engagement_quartile;