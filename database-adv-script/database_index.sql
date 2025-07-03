-- ✅ EXPLAIN ANALYZE BEFORE creating index on user_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 3;

-- ✅ Create index on user_id
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- ✅ EXPLAIN ANALYZE AFTER creating index
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 3;

-- ✅ EXPLAIN ANALYZE BEFORE creating index on property_id
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 10;

-- ✅ Create index on property_id
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- ✅ EXPLAIN ANALYZE AFTER creating index
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 10;

-- ✅ EXPLAIN ANALYZE BEFORE composite index
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 10 AND start_date > '2024-01-01';

-- ✅ Create composite index
CREATE INDEX idx_bookings_property_date ON bookings(property_id, start_date);

-- ✅ EXPLAIN ANALYZE AFTER
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE property_id = 10 AND start_date > '2024-01-01';
