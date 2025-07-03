# 🚦 Database Performance Monitoring Report

## 🧪 Monitoring Tools Used
- PostgreSQL: `EXPLAIN ANALYZE`
- MySQL: `SHOW PROFILE`

## 🔍 Queries Tested

1. **Booking Lookup by User**
```sql
SELECT * FROM bookings WHERE user_id = 5;
