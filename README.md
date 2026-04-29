# Telco Customer Churn Analysis

Customer churn analysis using SQL, Python, and Power BI to identify key drivers of churn and recommend retention strategies.

## Dashboard Preview
### Executive Overview
![Overview](reports/figures/1. Executive Overview.png)

### Churn Drivers
![Drivers](reports/figures/2. Churn Drivers.png)

### Customer Risk & Retention
![Risk](reports/figures/3. Customer Risk & Retention.png)

---

## Problem Statement

Customer churn poses a significant challenge for subscription-based businesses. High churn rates reduce revenue stability and increase customer acquisition costs.

This project investigates **why customers are leaving**, identifies **high-risk segments**, and provides **data-driven recommendations** to improve customer retention.

---

## Dataset

* Source: IBM Telco Customer Churn Dataset (Kaggle)
* Total records: 7,043 customers
* Features include:

  * Customer demographics
  * Contract type
  * Billing information
  * Service usage
  * Churn status (Yes/No)

---

## Tools & Technologies

* **SQL** – Data exploration and segmentation
* **Python (Pandas, Matplotlib)** – Data cleaning and analysis
* **Power BI** – Dashboard visualization and storytelling

---

## Key Insights

### 1. High Overall Churn Rate

* **26.5% of customers have churned**
* Indicates a significant retention issue affecting more than 1 in 4 customers

---

### 2. Revenue Impact

* **Estimated monthly revenue loss: RM139K**
* Demonstrates strong financial impact of customer attrition

---

### 3. Contract Type is the Strongest Driver

* Month-to-month churn rate: ~43%
* One-year: ~11%
* Two-year: ~3%

Customers without long-term commitment are significantly more likely to churn

---

### 4. Pricing Influences Churn

* Churned customers pay **higher monthly charges (~RM74 vs RM61)**
* Suggests perceived lack of value in higher-priced plans

---

### 5. Early Customer Lifecycle Risk

* First-year churn rate: ~47%
* Long-term customers (2+ years): ~14%

The first 12 months are the most critical period for retention

---

### 6. High-Risk Customer Profile

Customers most likely to churn:

* Month-to-month contract
* High monthly charges
* Tenure less than 1 year

---

## Dashboard Overview

The Power BI dashboard is structured into three sections:

### 1. Executive Overview

* KPI summary (customers, churn rate, revenue loss)
* High-level churn distribution

### 2. Churn Drivers

* Contract type vs churn
* Monthly charges vs churn
* Payment method analysis

### 3. Customer Risk & Retention

* Tenure-based churn analysis
* High-risk customer segments
* Business recommendations

---

## Business Recommendations

Based on the analysis:

### 1. Improve Early Customer Experience

* Focus on onboarding within first 3–6 months
* Provide proactive support and engagement

---

### 2. Encourage Long-Term Contracts

* Offer discounts for 1–2 year commitments
* Bundle services to increase perceived value

---

### 3. Optimize Pricing Strategy

* Review high-cost plans
* Align pricing with customer value perception

---

### 4. Target High-Risk Customers

* Identify customers with:

  * Short tenure
  * Month-to-month contracts
  * High monthly charges
* Offer retention incentives before churn occurs

---

## Project Structure

```
telco-customer-churn-analysis/
│
├── data/
│   └── raw/
│
├── sql/
├── notebooks/
├── dashboards/
├── reports/
│   └── figures/
│
└── README.md
```

---

## Conclusion

This project demonstrates how data analysis can uncover key drivers of customer churn and translate insights into actionable business strategies.

By focusing on **early retention, pricing optimization, and contract strategy**, companies can significantly reduce churn and protect revenue.

---
