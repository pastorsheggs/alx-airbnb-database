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
