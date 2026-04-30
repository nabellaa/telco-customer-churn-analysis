SELECT Churn,
       AVG(MonthlyCharges) AS avg_monthly_charges
FROM customer_churn
GROUP BY Churn;