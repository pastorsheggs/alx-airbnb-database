# Airbnb Database Normalization to 3NF

This document outlines how the database schema was normalized to the Third Normal Form (3NF).

---

## ✅ Step 1: First Normal Form (1NF)
- Ensured that all tables have atomic values (no multiple values in one field).
- Assigned primary keys to each table (`user_id`, `property_id`, etc.).

---

## ✅ Step 2: Second Normal Form (2NF)
- Removed any partial dependencies by eliminating composite keys.
- Each table now uses a single primary key.
- Attributes depend fully on the primary key.

---

## ✅ Step 3: Third Normal Form (3NF)
- Eliminated transitive dependencies.
- Removed derived or redundant data from tables.
    - Example: removed `user_email` from `Booking` table and kept only `user_id` as a foreign key.
    - Example: no `property_title` inside `Booking` — only `property_id`.
- Linked related data through foreign keys instead of duplicating data.

---

## ✅ Summary of Tables in 3NF

### User
- `user_id`, `name`, `email`, `phone_number`

### Property
- `property_id`, `owner_id`, `title`, `description`, `location`, `price_per_night`

### Booking
- `booking_id`, `user_id`, `property_id`, `start_date`, `end_date`, `total_price`

### Review
- `review_id`, `user_id`, `property_id`, `rating`, `comment`

### Payment
- `payment_id`, `booking_id`, `payment_date`, `amount`, `payment_method`, `status`
