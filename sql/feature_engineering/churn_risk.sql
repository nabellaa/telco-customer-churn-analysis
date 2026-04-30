SELECT customerID,
       CASE 
           WHEN tenure < 12 AND MonthlyCharges > 70 THEN 'High Risk'
           WHEN tenure < 12 THEN 'Medium Risk'
           ELSE 'Low Risk'
       END AS churn_risk_segment
FROM customer_churn;