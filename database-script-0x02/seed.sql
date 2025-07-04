-- USERS
INSERT INTO users (user_id, name, email, phone_number)
VALUES
('u1', 'Alice Johnson', 'alice@example.com', '1234567890'),
('u2', 'Bob Smith', 'bob@example.com', '2345678901'),
('u3', 'Carol Davis', 'carol@example.com', '3456789012');

-- PROPERTIES
INSERT INTO properties (property_id, owner_id, title, description, location, price_per_night)
VALUES
('p1', 'u1', 'Beach House', 'A nice beachside retreat.', 'Miami', 200.00),
('p2', 'u1', 'Mountain Cabin', 'Cozy cabin in the mountains.', 'Denver', 150.00),
('p3', 'u2', 'City Apartment', 'Modern apartment downtown.', 'New York', 250.00);

-- BOOKINGS
INSERT INTO bookings (booking_id, user_id, property_id, start_date, end_date, total_price)
VALUES
('b1', 'u2', 'p1', '2024-06-01', '2024-06-05', 800.00),
('b2', 'u3', 'p2', '2024-07-10', '2024-07-12', 300.00);

-- PAYMENTS
INSERT INTO payments (payment_id, booking_id, amount, payment_method, status)
VALUES
('pay1', 'b1', 800.00, 'Credit Card', 'Completed'),
('pay2', 'b2', 300.00, 'PayPal', 'Completed');

-- REVIEWS
INSERT INTO reviews (review_id, user_id, property_id, rating, comment)
VALUES
('r1', 'u2', 'p1', 5, 'Amazing beach house!'),
('r2', 'u3', 'p2', 4, 'Cozy and peaceful.');
