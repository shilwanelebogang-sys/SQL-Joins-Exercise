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
<img width="567" height="138" alt="image" src="https://github.com/user-attachments/assets/2c1a0743-6647-4bce-a253-8d34c521e1f8" />

- Q2 → Subscriptions with plans
<img width="592" height="153" alt="image" src="https://github.com/user-attachments/assets/beaaf3cb-4ab2-41df-bdb6-04b6accbc760" />

- Q3 → Sessions with matching shows
<img width="671" height="134" alt="image" src="https://github.com/user-attachments/assets/218929b7-0795-4874-b62d-9a633daddcf7" />

- Q4 → Sessions with users 
<img width="692" height="134" alt="image" src="https://github.com/user-attachments/assets/a6f9125b-3f23-4229-b39f-1139adbd3cd1" />

- Q5 → Users + subscriptions + plans
<img width="701" height="135" alt="image" src="https://github.com/user-attachments/assets/83bafde2-90f8-458c-890d-6ba9e5f67bea" />


### LEFT JOIN Queries
- Q6 → All users with subscriptions
<img width="575" height="185" alt="image" src="https://github.com/user-attachments/assets/716dc02c-8ef4-466e-9c91-fbf5d295c1b0" />

- Q7 → All plans with subscriptions
<img width="562" height="188" alt="image" src="https://github.com/user-attachments/assets/ac38440c-ada6-4b5b-a6f0-435b85800a49" />

- Q8 → All shows with viewing sessions
<img width="583" height="184" alt="image" src="https://github.com/user-attachments/assets/75874760-6662-48e1-8bab-b3ca70668a3c" />

- Q9 → All sessions with users
<img width="700" height="162" alt="image" src="https://github.com/user-attachments/assets/ddb31c66-e1db-4d7e-8d16-20bd25364a7d" />

- Q10 → Users with plans (including NULLs)
<img width="587" height="187" alt="image" src="https://github.com/user-attachments/assets/40ddbd53-7f46-41fb-8d75-77f17b0cf2b2" />
  

### FULL OUTER JOIN Queries
- Q11 → All users and subscriptions
<img width="576" height="212" alt="image" src="https://github.com/user-attachments/assets/9b638a89-c252-4a6c-a9af-f88c4ae8b4bf" />
  
- Q12 → All plans and subscriptions
<img width="574" height="188" alt="image" src="https://github.com/user-attachments/assets/96e6f7f4-457c-4732-9d51-beba3241bdd3" />

- Q13 → All shows and sessions
<img width="589" height="214" alt="image" src="https://github.com/user-attachments/assets/2ce45b86-22a4-4c60-ae3a-67dc6947bda6" />

- Q14 → All users and sessions
<img width="695" height="214" alt="image" src="https://github.com/user-attachments/assets/814f8a08-52bc-4502-833c-1aebb82ca124" />

- Q15 → Combined users, subscriptions, and plans 
<img width="691" height="237" alt="image" src="https://github.com/user-attachments/assets/71d015b2-b34a-4682-914d-f55d01ef4eb8" />

---

## 🔍 Key Concepts

### ✅ INNER JOIN
- Returns only matching records from both tables  
- Drops unmatched rows  

```sql
SELECT *
FROM users AS u
INNER JOIN subscriptions AS s
ON u.user_id = s.user_id;
```

## ✅ LEFT JOIN

Returns all rows from the left table
Missing matches appear as NULL

```SQL
SELECT *
FROM users AS u
LEFT JOIN subscriptions AS s
ON u.user_id = s.user_id;
```

## ✅ FULL OUTER JOIN

Returns all rows from both tables
Unmatched rows appear as NULL

```SQL
SELECT *
FROM users AS u
FULL OUTER JOIN subscriptions AS s
ON u.user_id = s.user_id;
```

---

## ⚠️ Important Observations
The dataset includes intentional gaps to demonstrate join behavior:

- Some users have no subscriptions
- Some subscriptions reference non-existing users
- Some shows were never watched
- Some viewing sessions reference invalid shows

---

## 🚀 Business Value
This execise reflects real-world use cases such as:

-📊 Customer activity analysis
-📈 Subscription and revenue insights
-🎬 Content engagement tracking
-🧾 Data quality checks
-🏢 Reporting across multiple data sources

---

## 📝 Bonus Insights

INNER JOIN → shows valid relationships
LEFT JOIN → highlights missing data on one side
FULL OUTER JOIN → reveals complete data gaps
NULL values indicate missing relationships

---

## ✅ Conclusion

✔ INNER JOIN → use for matched data
✔ LEFT JOIN → use to keep all base records
✔ FULL OUTER JOIN → use to analyse all gaps
