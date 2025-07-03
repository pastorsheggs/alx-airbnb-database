-- 1. INNER JOIN: Get all bookings with the respective user who made them
SELECT 
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.start_date,
    bookings.end_date,
    users.id AS user_id,
    users.name AS user_name,
    users.email
FROM bookings
INNER JOIN users ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Get all properties and their reviews (including properties with no reviews)
SELECT 
    properties.id AS property_id,
    properties.title,
    properties.location,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM properties
LEFT JOIN reviews ON properties.id = reviews.property_id
ORDER BY properties.id;

-- 3. FULL OUTER JOIN: Get all users and all bookings, even if user has no booking or booking has no user
SELECT 
    users.id AS user_id,
    users.name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.start_date
FROM users
FULL OUTER JOIN bookings ON users.id = bookings.user_id;
