# Airbnb Clone Database Schema

This schema defines the structure for the Airbnb Clone database.

## Tables

- **users**: stores user information
- **properties**: stores listings
- **bookings**: records property reservations
- **payments**: tracks payment details
- **reviews**: stores user reviews of properties

## Features

- Relationships between users, properties, bookings, and reviews.
- Cascading delete or set null for data integrity.
- Indexes added for query optimization on key foreign keys.

## Notes

- UUIDs (`CHAR(36)`) are used as primary keys for uniqueness.
- Data types and constraints are used to ensure integrity.
