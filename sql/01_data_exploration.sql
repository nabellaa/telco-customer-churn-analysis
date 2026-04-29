SELECT name FROM sqlite_master WHERE type='table';

PRAGMA table_info(customer_churn);

-- View data
SELECT *
FROM customer_churn
LIMIT 10;

-- Count total customers
SELECT COUNT(*) AS total_customers
FROM customer_churn;

-- Check duplicate customer IDs
SELECT customerID, COUNT(*)
FROM customer_churn
GROUP BY customerID
HAVING COUNT(*) > 1;

-- Check missing values (important fields)
SELECT 
    SUM(CASE WHEN TotalCharges IS NULL OR TotalCharges = '' THEN 1 ELSE 0 END) AS missing_total_charges
FROM customer_churn;

-- Check churn distribution
SELECT 
    Churn,
    COUNT(*) AS total,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_churn), 2) AS percentage
FROM customer_churn
GROUP BY Churn;