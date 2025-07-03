-- Step 1: Create a partitioned version of the bookings table
CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT,
    property_id INT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50)
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions for 3 different years
CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 3: Example of inserting data (if needed)
-- INSERT INTO bookings_partitioned (user_id, property_id, start_date, end_date, status)
-- VALUES (1, 101, '2024-05-10', '2024-05-12', 'confirmed');

-- Step 4: Example of a query to test performance
SELECT * 
FROM bookings_partitioned 
WHERE start_date BETWEEN '2024-01-01' AND '2024-12-31';
