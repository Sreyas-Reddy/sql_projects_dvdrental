# 📀 dvdrental Revenue & Operations Analytics (PostgreSQL)

## 📌 Project Overview

This project analyzes the PostgreSQL **dvdrental** sample database to extract revenue insights, customer behavior patterns, and operational efficiency metrics using pure SQL.

The objective was to simulate real-world analytical workflows using structured query design, CTE layering, aggregations, window functions, and careful join logic.

**Tech Stack**
- PostgreSQL
- pgAdmin
- dvdrental sample database

---

## 🎯 Business Questions Answered

### 1️⃣ Top Customers by Revenue
- Who generates the most revenue?
- How many payments does each top customer make?

Techniques:
- JOINs
- SUM(), COUNT()
- GROUP BY
- Sorting & limiting

---

### 2️⃣ Revenue by Film Category
- Which film categories generate the highest total revenue?
- What is the average revenue per rental?

Techniques:
- Multi-table joins
- DISTINCT counting to prevent double-counting
- Revenue normalization

---

### 3️⃣ Top Films by Revenue
- Which individual films drive the most revenue?
- How does category association affect revenue distribution?

Techniques:
- Deep join chains across 6 tables
- Film-level aggregation
- Revenue ranking

---

### 4️⃣ Customer Retention Analysis
- What percentage of customers are one-time renters vs repeat renters?

Techniques:
- CTE layering
- CASE-based bucketing
- Percent-of-total calculation using window functions

---

### 5️⃣ Pareto Analysis (Revenue Concentration)
- What percentage of revenue comes from the top 20% of customers?

Techniques:
- Revenue aggregation per customer
- NTILE() window function
- Conditional aggregation
- Revenue concentration ratio calculation

---

### 6️⃣ Inventory Utilization
- Which films have low rentals per inventory copy?
- Where might inventory be over-allocated?

Techniques:
- LEFT JOIN to preserve zero-rental records
- Safe division with numeric casting
- Operational ratio metrics

---

## 🛠 Technical Concepts Demonstrated

- Multi-level aggregations
- Common Table Expressions (CTEs)
- Window Functions (NTILE, SUM() OVER)
- DISTINCT handling in revenue calculations
- LEFT JOIN logic for preserving zero-activity records
- Ratio calculations with safe numeric casting
- Business-driven metric design

---

## 📂 Repository Structure

```
sql_projects_dvdrental/
│
├── sql/
│   ├── 01_top_customers.sql
│   ├── 02_top_categories.sql
│   ├── 03_top_films.sql
│   ├── 04_customer_retention.sql
│   ├── 05_pareto_revenue.sql
│   └── 06_inventory_utilization.sql
│
├── outputs/
│   ├── 01_top_customers.csv
│   ├── 02_top_categories.csv
│   ├── 03_top_films.csv
│   ├── 04_customer_retention.csv
│   ├── 05_pareto_revenue.csv
│   └── 06_inventory_utilization.csv
│
└── README.md
```
---

## ⚙️ How to Run

1. Install PostgreSQL
2. Load the dvdrental sample database
3. Open pgAdmin Query Tool
4. Execute SQL files in the `/sql` directory
5. Export results to CSV into `/outputs`

---

## 📊 Key Insights

- Revenue is highly concentrated among a small percentage of customers (Pareto effect).
- Certain film categories disproportionately drive revenue.
- Some films have low rentals per copy, indicating possible inventory inefficiency.
- A strong portion of customers are repeat renters, indicating retention potential.

---

## 🚀 What This Project Demonstrates

- Ability to translate business questions into structured SQL analysis
- Strong join logic across normalized relational schemas
- Prevention of double-counting in revenue analysis
- Practical use of window functions for segmentation
- Clean, reproducible GitHub-ready analytics workflow

---

## 📎 Dataset

PostgreSQL dvdrental sample database  
Used for educational and portfolio demonstration purposes.
