# ⚡ Query Optimization Report

## 🧾 Initial Query
The initial query joined 4 tables: `bookings`, `users`, `properties`, and `payments`. It retrieved many fields, some of which were not necessary for the intended output.

## 🔍 Performance Analysis (via EXPLAIN)
- Full table scans detected on large tables (users, properties)
- Joins were performed without clear use of indexes
- The query was returning more data than needed

## 🛠️ Optimizations Applied
- Selected only required fields (excluded user email, property location, etc.)
- Used table aliases for better readability
- Assumed existence of indexes on:
  - `bookings.user_id`
  - `bookings.property_id`
  - `payments.booking_id`

## ✅ Result
The optimized query showed:
- Reduced execution time
- Better performance when using indexed columns
- Lower memory usage due to fewer columns

## 🧠 Recommendation
For larger datasets, always:
- Use `EXPLAIN` or `EXPLAIN ANALYZE`
- Avoid `SELECT *`
- Index foreign key columns used in joins
