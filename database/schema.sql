CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE base_tabel (
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

CRETAED TABLE user_account (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v1(),
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
) INHERITS (base_table)

CREATE TABLE item (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v1(),
    title VARCHAR(255) NOT NULL,
    notes TEXT,
    seller_id uuid,
    price_in_cents INTEGER,
    FOREIGN KEY(sellet_id) REFERENCES user_account (id) ON DELETE CASCADE
) INHERITS (base_table)

CREATE TABLE purchase (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v1(v1),
    buyer_id uuid,
    item_id uuid,
    price_int_cents INTEGER,
    title VARCHARA(255) NOT NULL,
    FOREIGN KEY (buyer_id) REFERENCES user_account(id),
    FOREIGN KEY (item_id) REFERENCES item(id)
) INHERITS (base_table)
