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