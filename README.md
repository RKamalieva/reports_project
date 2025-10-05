# 📊 Business Data Insights — SQL Reporting Project

## 🧭 Project Overview

This project provides analytical SQL queries designed to extract key business insights from a set of connected company databases.

The goal is to demonstrate how structured data from **sales**, **invoicing**, and **inventory** systems can be combined to generate clear, actionable reports that support decision-making.

The queries operate on three MySQL databases:
- **sql_store** — contains information about customers, orders, shippers, and order statuses.  
- **sql_invoicing** — manages client invoices, payments, and due dates.  
- **sql_inventory** — tracks products, quantities in stock, and pricing details.

Together, these databases represent a simplified model of a business information system where data from multiple departments can be analyzed using SQL.

## 🎯 Purpose of the Project

The project focuses on answering three essential operational questions:

1. **Which products are at risk of running out of stock?**  
   → Detects products with low inventory levels for timely replenishment.

2. **What are the most recent customer orders and their total values?**  
   → Provides an overview of order activity, combining customer and financial data.

3. **Which invoices are overdue and require payment follow-up?**  
   → Identifies clients with outstanding balances and tracks overdue days.

Each query can be used as an independent report or integrated into a larger analytics dashboard.

## ⚙️ Technologies and Tools

- **Database Management System:** MySQL 
- **Databases Used:**  
  - `sql_store`  
  - `sql_invoicing`  
  - `sql_inventory`  
- **SQL Techniques Applied:**  
  - `SELECT`, `JOIN`, `GROUP BY`, `ORDER BY`, `WHERE`  
  - Aggregate functions (`SUM()`, `COALESCE()`)  
  - Date functions (`DATEDIFF()`)  
  - Aliasing for clarity and organization
