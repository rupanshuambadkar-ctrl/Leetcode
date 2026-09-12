SELECT query_name,
 ROUND(avg(rating/position), 2) AS quality,
ROUND(avg(rating < 3) * 100, 2) AS poor_query_percentage

FROM Queries
GROUP BY query_name;