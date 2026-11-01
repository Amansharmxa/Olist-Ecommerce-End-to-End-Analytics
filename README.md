# Olist-Ecommerce-End-to-End-Analytics
An end-to-end e-commerce data analytics project using Python (Pandas) for data preprocessing, PostgreSQL for relational database storage and complex SQL analysis, and Power BI for executive dashboarding and visualization.
---

## 🛠️ Tech Stack & Tools Used
- **Python (Pandas, SQLAlchemy, Jupyter Notebook):** Automated data preprocessing, handling missing values, standardizing date formats, and batch-loading data into the database.
- **PostgreSQL & pgAdmin:** Relational database management, schema setup (`public`), and executing business-critical SQL queries.
- **Power BI:** Designing executive interactive dashboards, data modeling, and visualizing Key Performance Indicators (KPIs).

---

## 🔄 Project Workflow & Steps

### 1. Data Cleaning & Preprocessing (Python)
- Loaded multiple raw Olist CSV datasets and inspected their structural integrity.
- Handled missing values, standardized text fields, and cleaned data anomalies across tables.
- Converted timestamp columns (Order purchase, delivery dates, etc.) into standard datetime formats to enable temporal and logistics analysis.

### 2. Automated Database Ingestion (Python & PostgreSQL)
- Developed automated Python scripts utilizing `SQLAlchemy` to seamlessly push the cleaned dataframes directly into a PostgreSQL relational database (`olist_ecommerce`).
- Set up a structured schema making the data ready for heavy analytical operations.

### 3. Database Management & Advanced SQL Querying (SQL)
- Executed targeted analytical queries to address key business questions:
  - **Overall KPIs:** Computed Total Revenue, Total Orders, and Product Sales.
  - **Category Breakdown:** Identified top-performing product categories driving maximum revenue.
  - **Payment Behavior:** Analyzed customer adoption across various payment methods (Credit Card, Boleto, etc.).
  - **Delivery Logistics:** Tracked fulfillment efficiency by comparing estimated delivery dates against actual delivery dates.

### 4. Data Visualization (Power BI)
- Connected Power BI directly to the PostgreSQL database.
- Designed a clean, interactive dashboard featuring core performance metrics and visual trends.
- **KPI Cards:** Highlighted Total Revenue, Total Orders, Total Products Sold, and Average Delivery Days.
- **Visual Charts & Slicers:** Included bar charts for category performance, donut charts for payment shares, line charts for sales trends, and dynamic date slicers.

---

## 🚀 Key Insights & Learnings
- Successfully automated the ETL (Extract, Transform, Load) pipeline for 9 complex relational tables using Python.
- Uncovered critical delivery bottleneck patterns by analyzing order shipping delays against estimated timelines.
- Identified primary revenue-generating product categories and customer payment preferences to aid inventory and business strategy.
