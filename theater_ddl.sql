CREATE TABLE customers(
    customer_id SERIAL PRIMARY KEY,
    phone_num VARCHAR
);

CREATE TABLE concessions(
    concessions_id SERIAL PRIMARY KEY,
    quantity INTEGER,
    concession_type VARCHAR
);

CREATE TABLE order1(
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    concessions_id INTEGER,
    FOREIGN KEY (concessions_id) REFERENCES concessions(concessions_id)
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    run_time INTEGER,
    title VARCHAR
);

CREATE TABLE theaters(
    theater_id SERIAL PRIMARY KEY,
    capacity INTEGER
);

CREATE TABLE showtimes(
    showtimes_id SERIAL PRIMARY KEY,
    movie_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    theater_id INTEGER,
    FOREIGN KEY (theater_id) REFERENCES theaters(theater_id)
);

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    theater_id INTEGER,
    FOREIGN KEY (theater_id) REFERENCES theaters(theater_id),
    movie_id INTEGER,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);