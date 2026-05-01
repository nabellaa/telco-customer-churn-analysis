import pandas as pd
import sqlite3

# ---------------------------
# 1. CONNECT TO DATABASE
# ---------------------------
def connect_db(db_path):
    conn = sqlite3.connect(db_path)
    return conn


# ---------------------------
# 2. LOAD DATA FROM SQL
# ---------------------------
def load_data(conn):
    query = "SELECT * FROM customer_churn"
    df = pd.read_sql(query, conn)
    return df


# ---------------------------
# 3. DATA CLEANING
# ---------------------------
def clean_data(df):
    df['TotalCharges'] = pd.to_numeric(df['TotalCharges'], errors='coerce')
    df = df.dropna()
    return df


# ---------------------------
# 4. FEATURE ENGINEERING
# ---------------------------
def feature_engineering(df):

    # Tenure Group
    def tenure_group(x):
        if x <= 12:
            return "0-1 Year"
        elif x <= 24:
            return "1-2 Years"
        else:
            return "2+ Years"

    df['Tenure Group'] = df['tenure'].apply(tenure_group)

    # Churn Risk Segment
    def risk_segment(row):
        if row['tenure'] < 12 and row['MonthlyCharges'] > 70:
            return "High Risk"
        elif row['tenure'] < 12:
            return "Medium Risk"
        else:
            return "Low Risk"

    df['churn_risk_segment'] = df.apply(risk_segment, axis=1)

    # CLV
    df['CLV'] = df['tenure'] * df['MonthlyCharges']

    return df


# ---------------------------
# 5. CALCULATE KPIs
# ---------------------------
def calculate_kpis(df):

    churn_rate = (df['Churn'] == 'Yes').mean()

    lost_revenue = df[df['Churn'] == 'Yes']['MonthlyCharges'].sum()

    total_customers = len(df)

    churned_customers = (df['Churn'] == 'Yes').sum()

    kpi_dict = {
        "total_customers": total_customers,
        "churned_customers": churned_customers,
        "churn_rate": churn_rate,
        "lost_revenue": lost_revenue
    }

    return kpi_dict


# ---------------------------
# 6. SAVE OUTPUT
# ---------------------------
def save_outputs(df, kpis):

    # Save processed dataset
    df.to_csv("../data/processed/churn_processed.csv", index=False)

    # Save KPIs
    kpi_df = pd.DataFrame([kpis])
    kpi_df.to_csv("../data/processed/kpis.csv", index=False)


# ---------------------------
# 7. MAIN PIPELINE
# ---------------------------
def run_pipeline():

    print("Starting pipeline...")

    conn = connect_db("../sql/telco_churn.db")

    df = load_data(conn)
    print("Data loaded")

    df = clean_data(df)
    print("Data cleaned")

    df = feature_engineering(df)
    print("Features created")

    kpis = calculate_kpis(df)
    print("KPIs calculated")

    save_outputs(df, kpis)
    print("Outputs saved")

    conn.close()

    print("Pipeline completed successfully!")


# ---------------------------
# RUN SCRIPT
# ---------------------------
if __name__ == "__main__":
    run_pipeline()