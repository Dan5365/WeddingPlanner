INSERT INTO roles (id, role_name) VALUES (1, 'Admin'), (2, 'Bride'), (3, 'Groom');

-- RSVP statuses
INSERT INTO rsvp_statuses (id, status_name) VALUES (1, 'Pending'), (2, 'Accepted'), (3, 'Declined');

-- Service types
INSERT INTO servicetypes (id, type_name) VALUES (1, 'Photography'), (2, 'Catering');

-- Users
INSERT INTO users (id, name, email, role) VALUES 
(1, 'Alice', 'alice@example.com', 2),
(2, 'Bob', 'bob@example.com', 3),
(3, 'Vendor Joe', 'joe@vendor.com', 1);

-- Couples
INSERT INTO couples (id) VALUES (1);

-- Couple-Users
INSERT INTO couple_users (couple_id, user_id) VALUES (1, 1), (1, 2);

-- Weddings
INSERT INTO weddings (id, couple_id, date, location, budget) VALUES 
(1, 1, '2025-08-01', 'Paris', 10000.00);

-- Vendors
INSERT INTO vendors (id, user_id, service_type_id, payment, availability) VALUES 
(1, 3, 1, 2000.00, true);

-- Wedding Vendors
INSERT INTO weddingvendors (wedding_id, vendor_id) VALUES (1, 1);

-- Guests
INSERT INTO guests (id, wedding_id, user_id, name, rsvp_status, seating_number) VALUES 
(1, 1, NULL, 'Charlie', 1, 5),
(2, 1, 1, NULL, 2, 1);