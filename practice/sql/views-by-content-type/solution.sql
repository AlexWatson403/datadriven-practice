SELECT
  ci.content_type,
  COUNT(DISTINCT cv.view_id) AS view_count
FROM content_views as cv
JOIN content_items as ci
ON cv.content_id = ci.content_id
GROUP BY ci.content_type
