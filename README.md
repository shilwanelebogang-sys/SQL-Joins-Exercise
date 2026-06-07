# 💼 SQL Joins Exercise

## 👤 About Me
Hi, I'm **Lebogang Shilwane**, a data-focused professional building practical skills in SQL, data analysis, and reporting.

- 💻 SQL Environment: Databricks SQL (Apache Spark)
- 📊 Focus: Data Analysis, Reporting & Business Insights
- 🚀 Goal: Data Analyst / BI role

---

## 📌 Project Overview

This project demonstrates the use of SQL JOIN operations to combine and analyse data across multiple tables in a real-world scenario.

The dataset simulates a **streaming service company**, where user activity, subscriptions, plans, and content engagement are stored in separate tables.

### 🎯 Objective
To understand and apply:
- INNER JOIN → matching records only
- LEFT JOIN → all records from the left table
- FULL OUTER JOIN → all records from both tables

---

## 🧠 Key Skills Demonstrated

✅ Writing complex multi-table SQL queries  
✅ Understanding relationships between datasets  
✅ Handling missing (NULL) data  
✅ Data modelling and relational thinking  
✅ Building realistic business queries  
✅ Using Databricks in a cloud SQL environment  

---

## 🧩 Problem Approach

The exercise is divided into 3 key sections:

| Section | Join Type | Purpose |
|--------|----------|--------|
| Q1–Q5 | INNER JOIN | Matching data across tables |
| Q6–Q10 | LEFT JOIN | Retain all left-side data |
| Q11–Q15 | FULL OUTER JOIN | Identify all matches and gaps |

---

## 📂 Project Structure
## 📊 Query Outputs (Screenshots)

Below are outputs from the SQL queries executed in Databricks:

### INNER JOIN Queries
- Q1 → Users with subscriptions
    
- Q2 → Subscriptions with plans
   
- Q3 → Sessions with matching shows


- Q4 → Sessions with users 

- Q5 → Users + subscriptions + plans

   

### LEFT JOIN Queries
- Q6 → All users with subscriptions 
- Q7 → All plans with subscriptions 
- Q8 → All shows with viewing sessions  
- Q9 → All sessions with users 
- Q10 → Users with plans (including NULLs)  

### FULL OUTER JOIN Queries
- Q11 → All users and subscriptions   
- Q12 → All plans and subscriptions  
- Q13 → All shows and sessions
- Q14 → All users and sessions 
- Q15 → Combined users, subscriptions, and plans 

---

## 🔍 Key Concepts

### ✅ INNER JOIN
- Returns only matching records from both tables  
- Drops unmatched rows  

```sql
SELECT *
FROM users u
INNER JOIN subscriptions s ON u.user_id = s.user_id;
