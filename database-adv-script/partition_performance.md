# 📊 Partitioning Performance Report

## 🧱 Context
The `bookings` table has grown significantly, leading to slower query performance when filtering by `start_date`. To improve this, we implemented **table partitioning** by year using PostgreSQL's `RANGE` partitioning.

## 🛠️ Implementation
We created a new table `bookings_partitioned` partitioned by `start_date`, and split it into:
- `bookings_2023`
- `bookings_2024`
- `bookings_2025`

## 🔍 Performance Test
**Query Used:**
```sql
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
