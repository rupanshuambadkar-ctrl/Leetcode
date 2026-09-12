SELECT

DATE_FORMAT (trans_date, '%Y-%m') AS  month, country,

count(*) AS trans_count,

 SUM(case when state ='approved' then 1 else 0 end) AS  approved_count,

SUM(amount) AS trans_total_amount,
SUM(case when state = 'approved' then amount else 0 end)  AS approved_total_amount

FROM transactions

GROUP BY month, country;