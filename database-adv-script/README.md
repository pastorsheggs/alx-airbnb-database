# 🗃️ Advanced SQL Joins – Airbnb Clone Database

This file contains complex SQL queries designed to demonstrate mastery of SQL JOINs in the context of the Airbnb Clone project.

## 📌 File: `joins_queries.sql`

### ✅ Queries Included

1. **INNER JOIN**
   - Retrieves all bookings along with the users who made them.
   - Ensures only records with a match in both `bookings` and `users` tables are shown.

2. **LEFT JOIN**
   - Retrieves all properties and any reviews they might have.
   - Properties without reviews are still shown (with `NULL` values for review fields).

3. **FULL OUTER JOIN**
   - Retrieves all users and all bookings.
   - Ensures users without bookings and bookings not linked to any user are also shown.

> Note: Make sure your SQL engine supports FULL OUTER JOIN (e.g., PostgreSQL). MySQL users may need a workaround using `UNION`.

## 📁 Location

- Repository: `alx-airbnb-database`
- Directory: `database-adv-script/`
- Files:
  - `joins_queries.sql`
  - `README.md`

# 📄 Subqueries – Airbnb Clone Database

This file contains examples of both non-correlated and correlated subqueries used in the context of the Airbnb Clone project.

## 📌 File: `subqueries.sql`

### ✅ Included Queries

1. **Non-Correlated Subquery**
   - Retrieves all properties where the average rating is greater than 4.0.
   - The subquery independently calculates average ratings for each property.

2. **Correlated Subquery**
   - Finds users who have made more than 3 bookings.
   - The subquery depends on the outer query to count bookings per user.

## 📁 Location

- Repository: `alx-airbnb-database`
- Directory: `database-adv-script/`
- Files:
  - `subqueries.sql`
  - `README.md`


# 📊 Aggregations & Window Functions – Airbnb Clone Database

This file includes SQL queries demonstrating the use of aggregation functions and window functions for backend data analysis.

## 📌 File: `aggregations_and_window_functions.sql`

### ✅ Included Queries

1. **Aggregation with GROUP BY**
   - Uses `COUNT()` to calculate the total number of bookings made by each user.
   - Groups results by `user_id`.

2. **Window Function – ROW_NUMBER()**
   - Ranks properties based on the number of bookings using the `ROW_NUMBER()` window function.
   - Useful for generating leaderboards or analytics.

> Useful for leaderboard features, analytics dashboards, and property popularity tracking.

## 📁 Location

- Repository: `alx-airbnb-database`
- Directory: `database-adv-script/`
- Files:
  - `aggregations_and_window_functions.sql`
  - `README.md`
