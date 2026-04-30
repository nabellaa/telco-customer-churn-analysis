SELECT *
FROM customer_churn
WHERE Churn = 'Yes'
  AND Contract = 'Month-to-month'
  AND MonthlyCharges > 70;