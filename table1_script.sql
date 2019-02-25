CREATE TABLE table_one(
    customer_id serial PRIMARY KEY,
    customer_name VARCHAR (200) NOT NULL,
    customer_description VARCHAR (200),
    customer_updated_date TIMESTAMP WITH TIME ZONE
);