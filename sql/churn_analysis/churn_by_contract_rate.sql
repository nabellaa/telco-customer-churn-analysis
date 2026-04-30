SELECT Contract,
       Churn,
       COUNT(*) AS total_customers,
       ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY Contract), 2) AS churn_rate
FROM customer_churn
GROUP BY Contract, Churn;
