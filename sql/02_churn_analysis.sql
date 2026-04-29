-- No (active customers) = 5174
-- Yes (churned customers) = 1869
SELECT Churn, 
COUNT(*) 
FROM customer_churn 
GROUP BY Churn;

-- Churn by Contract Type 

-- churn rates per contract
-- Customers on month-to-month contracts are extremely likely to churn, 
-- while long-term contracts significantly reduce churn.
SELECT 
    Contract,
    Churn,
    COUNT(*) 
FROM customer_churn
GROUP BY Contract, Churn;

--or

-- Month-to-month = highest churn
-- Yearly → low churn
-- Customers without commitment leave easily
SELECT 
    Contract,
    Churn,
    COUNT(*) AS total_customers,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY Contract), 2) AS churn_rate
FROM customer_churn
GROUP BY Contract, Churn;

-- Churn by Monthly Charges 
-- Higher charges often = higher churn risk
-- Expensive plans push customers away
SELECT 
    Churn,
    AVG(MonthlyCharges) AS avg_monthly_charges
FROM customer_churn
GROUP BY Churn;

-- Churn by Tenure (customer lifespan) 
-- New customers churn more
-- Most churn = low tenure
-- New customers are at highest risk
SELECT 
    CASE 
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        ELSE '2+ Years'
    END AS tenure_group,
    Churn,
    COUNT(*) AS total
FROM customer_churn
GROUP BY tenure_group, Churn
ORDER BY tenure_group;

-- Churn by Payment Method 
-- Electronic check usually has higher churn
-- Possibly less stable customers or bad payment experience
SELECT 
    PaymentMethod,
    Churn,
    COUNT(*) AS total
FROM customer_churn
GROUP BY PaymentMethod, Churn;

-- High-risk customer profile (This defines the target segment for retention)
SELECT *
FROM customer_churn
WHERE Churn = 'Yes'
  AND Contract = 'Month-to-month'
  AND MonthlyCharges > 70;

-- Higher monthly charges are associated with 
-- a significantly higher likelihood of churn.
SELECT 
    Churn,
    AVG(MonthlyCharges)
FROM customer_churn
GROUP BY Churn;

