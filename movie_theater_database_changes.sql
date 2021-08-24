-- Update customer email in the database

SELECT *
FROM customer;

UPDATE customer
SET email = 'newemail@email.com'
WHERE customer_id = 1;  -- This updated the email to newemail@email.com


-- Update order date for the customer's last order

SELECT *
FROM order_;

UPDATE order_
SET order_date = '2021-08-23'
WHERE order_date = '2021-08-24' AND order_id = 1; -- This updated the order date for the order_id number 1