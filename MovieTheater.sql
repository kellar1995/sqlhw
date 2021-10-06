CREATE TABLE customers(
    customer_number SERIAL PRIMARY KEY,
    payment_method VARCHAR(5),
    movie VARCHAR(20),
    concessions_purchased VARCHAR(50),
    FOREIGN KEY concessions_purchased REFERENCES concessions(name_),
);

CREATE TABLE movies(
    movie_title VARCHAR(20) PRIMARY KEY,
    movie_length VARCHAR(20), --For examle (1 hour, 20 minutes)
    genre VARCHAR(20),
);

CREATE TABLE tickets(
    number_ SERIAL PRIMARY KEY,
    price NUMERIC(2,2),
    movie VARCHAR(20),
    FOREIGN KEY movie REFERENCES movies(movie_title),
)

CREATE TABLE concessions(
    name_ VARCHAR(15) PRIMARY KEY,
    price NUMERIC(2,2),
    type_ VARCHAR(10),
)