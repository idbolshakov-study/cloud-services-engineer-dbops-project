CREATE TABLE product (
    id BIGINT GENERATED BY DEFAULT AS IDENTITY,
    picture_url VARCHAR(255),
    name VARCHAR(255) NOT NULL
);

CREATE TABLE product_info (
    product_id BIGINT NOT NULL,
    price DOUBLE PRECISION,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE orders (
    id BIGINT GENERATED BY DEFAULT AS IDENTITY,
    status VARCHAR(255)
);

CREATE TABLE orders_date (
    order_id BIGINT NOT NULL,
    date_created DATE DEFAULT CURRENT_DATE,
    status VARCHAR(255)
);

CREATE TABLE order_product (
    order_id BIGINT NOT NULL,
    product_id BIGINT NOT NULL,
    quantity INTEGER NOT NULL
);
