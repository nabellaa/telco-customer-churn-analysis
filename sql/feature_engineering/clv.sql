SELECT customerID,
       tenure,
       MonthlyCharges,
       tenure * MonthlyCharges AS estimated_clv
FROM customer_churn;