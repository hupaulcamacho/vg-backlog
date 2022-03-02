DROP DATABASE IF EXISTS vgbacklog_db;
CREATE DATABASE vgbacklog_db;

\c vgbacklog_db

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR,
    email VARCHAR,
    password VARCHAR
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    creator_id INT REFERENCES users (id),
    body VARCHAR,
    hidden BOOLEAN
);

INSERT INTO users
    (username, email, password)
VALUES
    ('demouser', 'demoemail@demo.com', 'demo123');