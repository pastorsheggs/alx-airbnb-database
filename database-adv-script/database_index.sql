-- Index on email for fast user lookup
CREATE INDEX idx_users_email ON users(email);

-- Index on user_id for joining with users table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index on property_id for joining with properties table
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index on start_date for date range filtering
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Composite index for common search scenario: property + date
CREATE INDEX idx_bookings_property_date ON bookings(property_id, start_date);

-- Index on location for property search filters
CREATE INDEX idx_properties_location ON properties(location);
