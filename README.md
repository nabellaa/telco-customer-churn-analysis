# Telco Customer Churn Analysis (SQL + Python + Power BI)

## Project Overview

This project analyzes customer churn behavior for a telecommunications company using an end-to-end data analytics workflow.

The objective is to identify key drivers of churn, segment high-risk customers, and provide insights to support customer retention strategies and reduce revenue loss.

---

## Business Objectives

- Understand why customers are leaving
- Identify high-risk customer segments
- Measure financial impact of churn
- Support data-driven retention strategies

---

## Tools & Technologies

- SQL → Data extraction, exploration, and feature engineering
- Python → Data cleaning, analysis, and feature engineering
- Power BI → Interactive dashboard and reporting
- Jupyter Notebook → Exploratory data analysis and insights

---

## Dashboard Preview

### Executive Overview
![Overview](reports/figures/executive-overview.png)

### Churn Drivers Analysis
![Drivers](reports/figures/churn-drivers.png)

### Customer Risk Segmentation
![Risk](reports/figures/customer-risk.png)

---

## Project Structure

- `sql/` → SQL scripts for data exploration, churn analysis, and feature engineering
- `notebooks/` → Exploratory data analysis and insight development
- `pipeline.py` → Automated pipeline for data cleaning, feature engineering, and KPI generation
- `powerbi/` → Power BI dashboard files
- `data/raw/` → Original dataset
- `data/processed/` → Cleaned and feature-engineered datasets

---

## Key Analysis

### Churn Overview
- Overall churn rate
- Churn distribution

### Churn Drivers
- Contract type vs churn
- Monthly charges impact
- Payment method behavior

### Customer Segmentation
- Tenure-based segmentation
- High-risk customer identification

### Business Impact
- Customer Lifetime Value (CLV)
- Revenue loss estimation

---

## Key Insights

- Month-to-month customers show the highest churn rate
- Higher monthly charges are associated with higher churn risk
- New customers (0–1 year tenure) are most likely to churn
- A high-risk customer segment was identified based on tenure, contract type, and pricing
- Churn results in significant recurring revenue loss

---

## Business Recommendations

- Encourage long-term contracts to improve retention
- Improve onboarding experience for new customers
- Review pricing strategy for high-charge customers
- Target high-risk customers with retention campaigns

---

## Data Pipeline Architecture

This project follows a simplified real-world analytics pipeline.

### Data Flow

Raw Data → SQL Processing → Python Pipeline → Processed Dataset → Power BI Dashboard

---

### How the System Works

- When raw data is updated, the Python pipeline is re-run to regenerate cleaned and feature-engineered datasets
- Power BI dashboard reflects updated results after refreshing the data source
- Jupyter Notebook is used for analysis and must be re-run for new insights

---

### System Components

- **Pipeline (SQL + Python)** → Data preparation and automation  
- **Power BI Dashboard** → Visualization and reporting  
- **Notebook** → Exploration and insight generation  

---

### Real-World Context

This structure reflects a simplified version of a real analytics environment where:
- Data pipelines automate preparation
- BI tools support decision-making
- Analysts focus on exploration and insights