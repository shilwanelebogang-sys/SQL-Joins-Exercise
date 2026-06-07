
-- =========================================
-- VIEW ALL TABLES (DATA PREVIEW)
-- =========================================

-- View Users Table
SELECT *
FROM workspace.default.table_1_users;

-- View Plans Table
SELECT *
FROM workspace.default.table_2_plans;

-- View Subscriptions Table
SELECT *
FROM workspace.default.table_3_subscriptions;


-- View Shows Table
SELECT * 
FROM workspace.default.table_4_shows;

-- View Viewing Sessions Table
SELECT *
FROM workspace.default.table_5_viewing_sessions;


-- =========================================
-- PART A — INNER JOIN
-- =========================================

-- Q1: Show every user who has a subscription
SELECT  A.user_id,
        A.user_name,
        B.subscription_id,
        B.start_date
FROM workspace.default.table_1_users AS A
INNER JOIN workspace.default.table_3_subscriptions AS B
ON A.user_id = B.user_id;

-- Q2: Show every subscription with its plan name and price
SELECT  A.subscription_id,
        A.user_id,
        B.plan_name,
        B.monthly_price
FROM workspace.default.table_3_subscriptions AS A
INNER JOIN workspace.default.table_2_plans AS B
ON A.plan_id = B.plan_id;

-- Q3: Show every viewing session with matching show details
SELECT  A.session_id,
        A.user_id, 
        B.show_title, 
        B.genre,
        A.watch_minutes
FROM workspace.default.table_5_viewing_sessions AS A
INNER JOIN workspace.default.table_4_shows AS B
ON A.show_id = B.show_id;

-- Q4: Show viewing sessions with users (only valid users)
SELECT  A.user_name, 
        A.country, 
        B.session_id, 
        B.show_id, 
        B.watch_minutes
FROM workspace.default.table_1_users AS A
INNER JOIN workspace.default.table_5_viewing_sessions AS B
ON A.user_id = B.user_id;

-- Q5: Show users with subscriptions, plan, and price
SELECT  A.user_name, 
        A.country, 
        B.plan_name, 
        B.monthly_price,
        C.start_date
FROM workspace.default.table_1_users AS A
INNER JOIN workspace.default.table_3_subscriptions AS C
ON A.user_id = C.user_id 
INNER JOIN workspace.default.table_2_plans AS B
ON C.plan_id = B.plan_id;


-- =========================================
-- PART B — LEFT JOIN
-- =========================================

-- Q6: Show all users and their subscriptions (include no subscriptions)
SELECT  A.user_id, 
        A.user_name, 
        B.subscription_id, 
        B.start_date
FROM workspace.default.table_1_users AS A
LEFT JOIN workspace.default.table_3_subscriptions AS B
ON A.user_id = B.user_id;

-- Q7: Show all plans and their subscriptions (include empty plans)
SELECT  A.plan_id, 
        A.plan_name, 
        B.subscription_id, 
        B.user_id
FROM workspace.default.table_2_plans AS A
LEFT JOIN workspace.default.table_3_subscriptions AS B
ON A.plan_id = B.plan_id;

-- Q8: Show all shows and their viewing sessions (include unwatched shows)
SELECT  A.show_id, 
        A.show_title, 
        B.session_id, 
        B.watch_minutes
FROM workspace.default.table_4_shows AS A
LEFT JOIN workspace.default.table_5_viewing_sessions AS B
ON A.show_id = B.show_id;

-- Q9: Show all sessions and users (include invalid users)
SELECT  A.session_id, 
        A.show_id, 
        A.watch_minutes, 
        B.user_id, 
        B.user_name
FROM workspace.default.table_5_viewing_sessions AS A
LEFT JOIN workspace.default.table_1_users AS B
ON A.user_id = B.user_id;

-- Q10: Show all users with their plans (include users with no plan)
SELECT  A.user_name, 
        A.country, 
        B.plan_name, 
        B.monthly_price
FROM workspace.default.table_1_users AS A
LEFT JOIN workspace.default.table_3_subscriptions AS C
ON A.user_id = C.user_id
LEFT JOIN workspace.default.table_2_plans AS B
ON C.plan_id = B.plan_id;


-- =========================================
-- PART C — FULL OUTER JOIN
-- =========================================

-- Q11: Show all users and all subscriptions (include missing matches)
SELECT  A.user_id, 
        A.user_name, 
        B.subscription_id, 
        B.start_date
FROM workspace.default.table_1_users AS A
FULL OUTER JOIN workspace.default.table_3_subscriptions AS B
ON A.user_id = B.user_id;

-- Q12: Show all plans and subscriptions (include missing matches)
SELECT  A.plan_id, 
        A.plan_name, 
        B.subscription_id, 
        B.user_id
FROM workspace.default.table_2_plans AS A
FULL OUTER JOIN workspace.default.table_3_subscriptions AS B
ON A.plan_id = B.plan_id;

-- Q13: Show all shows and sessions (include missing matches)
SELECT  A.show_id, 
        A.show_title, 
        B.session_id, 
        B.watch_minutes
FROM workspace.default.table_4_shows AS A
FULL OUTER JOIN workspace.default.table_5_viewing_sessions AS B
ON A.show_id = B.show_id;

-- Q14: Show all users and all sessions (include missing matches)
SELECT  A.user_id, 
        A.user_name, 
        B.session_id, 
        B.show_id, 
        B.watch_minutes
FROM workspace.default.table_1_users AS A
FULL OUTER JOIN workspace.default.table_5_viewing_sessions AS B 
ON A.user_id = B.user_id;

-- Q15: Show all users, subscriptions, and plans (full combined view)
SELECT  A.user_id, 
        A.user_name, 
        B.subscription_id, 
        C.plan_id, 
        C.plan_name
FROM workspace.default.table_1_users AS A
FULL OUTER JOIN workspace.default.table_3_subscriptions AS B
ON A.user_id = B.user_id
FULL OUTER JOIN workspace.default.table_2_plans AS C
ON B.plan_id = C.plan_id;


--===========================================================
-- BONUS CHALLENGE
--===========================================================


-- BONUS 01
-- Users who have not subscribed to any plan:
Kabelo
Lerato

-- BONUS 02
-- Subscriptions referencing users that do not exist:
Subscription 504 (user_id 6)

-- BONUS 03
-- Shows that have never been watched:
Cooking Lab
Wild Earth

-- BONUS 04
-- Viewing sessions referencing shows that do not exist:
Session 905 (show_id 705)

-- BONUS 05
-- Plans with no subscribers:
Mobile
