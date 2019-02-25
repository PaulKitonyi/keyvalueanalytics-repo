CREATE TABLE table_two(
    transaction_id INTEGER NOT NULL,
    transaction_customer_id INTEGER,
    transaction_item VARCHAR (200) NOT NULL,
    transaction_date TIMESTAMP NOT NULL,
    transaction_created_date TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    transaction_updated_date TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
    PRIMARY KEY (transaction_id, transaction_customer_id),
    FOREIGN KEY (transaction_customer_id) REFERENCES table_one (customer_id)
);