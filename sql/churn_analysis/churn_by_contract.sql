SELECT Contract,
       Churn,
       COUNT(*) AS total
FROM customer_churn
GROUP BY Contract, Churn;