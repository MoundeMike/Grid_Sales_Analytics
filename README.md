# Grid_Sales_Analytics
End-to-end sales analytics project using Python for data cleaning and merging, SQL for exploratory data analysis, and Power BI for interactive business dashboards
Overview
This project demonstrates an end-to-end data analytics and business intelligence workflow.
Multiple raw sales datasets were cleaned, merged, and prepared using Python, analyzed using SQL,
and visualized using Power BI to deliver actionable business insights.

The project focuses on building a clean, analytics-ready dataset and performing
SQL-based exploratory data analysis (EDA), followed by BI dashboard development.

---

# Tools & Technologies
- Python (pandas)
- PostgreSQL
- SQL
- Power BI
- Jupyter Notebook

---

# Data Sources
- Customers dataset
- Products dataset
- Orders datasets (2023, 2024, 2025)

---

# Project Workflow

### 1. Data Preparation (Python)
- Loaded multiple CSV datasets from local storage
- Merged yearly order datasets into a single orders table
- Joined orders with customers and products datasets
- Cleaned data by:
  - Handling missing values
  - Removing invalid records
  - Standardizing column names and data types
  - Recomputing revenue where missing or inconsistent
- Engineered derived columns (order year, month, revenue)
- Exported the cleaned master dataset to PostgreSQL

### 2. Exploratory Data Analysis (SQL)
EDA was performed directly in PostgreSQL using SQL queries:
- Revenue trends by year and month
- Product and category performance
- Regional sales analysis
- Profit analysis
- Identification of top-performing products and regions

### 3. Business Intelligence (Power BI)
- Connected Power BI directly to PostgreSQL
- Created analytical measures 
- Built an interactive dashboard featuring:
  - Revenue trends over time
  - Top products and categories
  - Regional performance
- Added slicers for year, region, and product category
