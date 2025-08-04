WITH ranked AS (
    SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY ticker ORDER BY date ASC) AS rn_asc,
        ROW_NUMBER() OVER (PARTITION BY ticker ORDER BY date DESC) AS rn_desc
    FROM stocks
)
SELECT
    ticker,
    MIN(date) AS start_date,
    MAX(date) AS end_date,
    MAX(CASE WHEN rn_asc = 1 THEN close END) AS start_price,
    MAX(CASE WHEN rn_desc = 1 THEN close END) AS end_price,
    ROUND(
        (MAX(CASE WHEN rn_desc = 1 THEN close END) - MAX(CASE WHEN rn_asc = 1 THEN close END))
        / NULLIF(MAX(CASE WHEN rn_asc = 1 THEN close END), 0) * 100, 2
    ) AS total_return_percent
FROM ranked
GROUP BY ticker
ORDER BY total_return_percent DESC;