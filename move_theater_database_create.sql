-- Movie Theater Database Create

-- Create all Tables:

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	billing_info VARCHAR(150)
);

CREATE TABLE film(
	film_id SERIAL PRIMARY KEY,
	film_name VARCHAR(100),
	film_capacity INTEGER,
	film_rating VARCHAR(10)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticket_amount NUMERIC(3,2),
	film_id INTEGER NOT NULL,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(film_id) REFERENCES film(film_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE inventory(
	inventory_id SERIAL PRIMARY KEY,
	upc NUMERIC(12,0),
	inventory_qty INTEGER
);

CREATE TABLE concession(
	concession_id SERIAL PRIMARY KEY,
	concession_name VARCHAR(100),
	concession_amount NUMERIC(3,2),
	inventory_id INTEGER NOT NULL,
	FOREIGN KEY(inventory_id) REFERENCES inventory(inventory_id)
);

CREATE TABLE merch(
	merch_id SERIAL PRIMARY KEY,
	merch_name VARCHAR(100),
	merch_amount NUMERIC(3,2),
	inventory_id INTEGER NOT NULL,
	FOREIGN KEY(inventory_id) REFERENCES inventory(inventory_id)
);

CREATE TABLE order_(
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	sub_total NUMERIC(4,2),
	total_cost NUMERIC(5,2),
	customer_id INTEGER NOT NULL,
	inventory_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(inventory_id) REFERENCES inventory(inventory_id)
);