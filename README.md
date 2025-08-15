# Financial Database Management with SQL

## 📌 Project Overview
This project demonstrates how to design, create, and query a financial database using SQL.  
It includes information about major companies, their annual financial performance, and historical stock prices.  
The database is designed with relationships between tables for easy financial analysis and reporting.

## 🗂️ Database Structure
The project contains three main tables:
1. **Companies** – Stores company information such as name, sector, and founding year.
2. **Financials** – Stores annual financial metrics like revenue, expenses, and net income.
3. **Stock_Prices** – Stores historical stock prices for each company.

## 🛠️ Features
- Create tables with primary and foreign key relationships.
- Insert realistic company data and financial metrics.
- Query financial performance to find top companies by net income.
- Organize stock price history for analysis.

## 📄 Example Query
```sql
SELECT c.company_name, f.net_income
FROM Companies c
JOIN Financials f ON c.company_id = f.company_id
ORDER BY f.net_income DESC;
