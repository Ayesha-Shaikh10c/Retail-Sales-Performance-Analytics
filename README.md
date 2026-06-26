# 📊 Retail Sales Performance Analytics Dashboard

An end-to-end Business Intelligence & Data Analytics project that transforms raw retail sales data into actionable business insights using Python, PostgreSQL, SQL, and Power BI.

This project follows the complete analytics workflow used by business analysts—from data cleaning and exploration to SQL querying and interactive dashboard development.

---

## 🎯 Project Overview

This project analyzes the Sample Superstore dataset (9,994 orders, 2014–2017) to uncover actionable business insights around sales performance, profitability, regional trends, and discount strategy.

Goal: Identify what's driving revenue, where the business is losing money, and what actions could improve profitability.

---

## 🛠️ Tools & Technologies

| Category | Tools |
|----------|-------|
| Data Cleaning | Python (Pandas) |
| Database | PostgreSQL |
| Analysis | SQL |
| Visualization | Matplotlib, Seaborn |
| Dashboard | Power BI |
| Version Control | Git & GitHub |

---

## 📁 Repository Structure
├── data/                   # Original and cleaned datasets
├── notebooks/              # Jupyter notebooks (Weeks 1 & 3)
│   ├── Week1_Data_Cleaning.ipynb
│   └── Week3_EDA_Visualizations.ipynb
├── sql_queries/            # All SQL analysis queries
│   └── sql_queries.sql
├── dashboard/              # Power BI file and screenshot
│   ├── Retail_Sales_Dashboard.pbix
│   └── dashboard_screenshot.png
└── README.md
---

## 🔄 Project Workflow

Week 1 — Data Cleaning (Python)
- Loaded raw Excel data into Pandas
- Converted date columns, checked for duplicates and nulls
- Flagged 1,708 rows with shipping date errors
- Engineered new columns: Profit Margin %, Month, Quarter, Year, Days to Ship

Week 2 — SQL Analysis (PostgreSQL)
- Loaded cleaned data into PostgreSQL using SQLAlchemy
- Wrote 10 business queries covering revenue, regions, categories, discounts, and growth trends

Week 3 — Exploratory Data Analysis (Python)
- Built 7 visualizations using Matplotlib and Seaborn
- Explored sales trends, profitability by category, regional heatmaps, and discount impact

Week 4 — Dashboard & Portfolio
- Built an interactive Power BI dashboard connected live to PostgreSQL
- Organized and published the complete project on GitHub

---

## 📈 Dashboard Preview

![Dashboard Screenshot](dashboard/dashboard_screenshot.png)

---

## 💡 Key Business Insights

1. Discounts above 20% directly cause losses — average profit drops from +$66.90 (no discount) to -$106.71 (40%+ discount)
2. Furniture category generates $741K in sales but only $18K in profit — high discounting is eroding margins
3. West and East regions lead in both sales and profitability; Central region has high sales but weak profit
4. Texas is the 3rd highest revenue state but operates at a -$25K loss
5. November and December consistently peak across all regions — strong holiday seasonality
6. Overall sales grew 51% from 2014 to 2017 ($484K → $733K)
7. Canon imageCLASS Copier is the single highest revenue product at $61K

---

## 🚀 How to Run This Project

1. Clone this repository: git clone https://github.com/Ayesha-Shaikh10c/Retail-Sales-Performance-Analytics-Dashboard.git
2. Install Python dependencies: pip install pandas matplotlib seaborn sqlalchemy psycopg2
3. Open notebooks in Jupyter to review data cleaning and EDA steps
4. Execute SQL queries:
      Import the cleaned dataset into PostgreSQL and run:
          sql_queries/sql_queries.sql (after loading the cleaned CSV)
5. Open the .pbix file in Power BI Desktop to explore the interactive dashboard

---

## 👤 Author

Ayesha Shaikh
Aspiring Business/Data Analyst | BSc Computer Application
📍 India
