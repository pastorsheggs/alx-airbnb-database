# 🧠 Index Performance Report

## 📌 Tables Optimized
- `users`
- `bookings`
- `properties`

## 🔍 Indexes Created
```sql
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
CREATE INDEX idx_bookings_property_date ON bookings(property_id, start_date);
CREATE INDEX idx_properties_location ON properties(location);
