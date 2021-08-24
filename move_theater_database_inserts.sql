-- Move Theater Database Insert Statements

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	email,
	billing_info
)VALUES(
	1,
	'Joshua',
	'Cunningham',
	'email@email.com',
	'4242-4242-4242-4242 623 05/23'
);

INSERT INTO film(
	film_id,
	film_name,
	film_capacity,
	film_rating
)VALUES(
	1,
	'Intersteller',
	250,
	'PG-13'
);

INSERT INTO ticket(
	ticket_id,
	ticket_amount,
	film_id,
	customer_id
)VALUES(
	1,
	5.00,
	1,
	1
);

INSERT INTO inventory(
	inventory_id,
	upc,
	inventory_qty
)VALUES(
	1,
	123456789012,
	50
);

INSERT INTO inventory(
	inventory_id,
	upc,
	inventory_qty
)VALUES(
	2,
	123456789011,
	35
);

INSERT INTO concession(
	concession_id,
	concession_name,
	concession_amount,
	inventory_id
)VALUES(
	1,
	'Junior Mints',
	2.00,
	1
);

INSERT INTO merch(
	merch_id,
	merch_name,
	merch_amount,
	inventory_id
)VALUES(
	1,
	'Intersteller Movie Poster',
	8.00,
	2
);

INSERT INTO order_(
	order_id,
	sub_total,
	total_cost,
	customer_id,
	inventory_id
)VALUES(
	1,
	7.00,
	10.00,
	1,
	1
);