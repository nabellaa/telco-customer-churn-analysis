SELECT Churn,
       COUNT(*) AS total,
       ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_churn), 2) AS percentage
FROM customer_churn
GROUP BY Churn;