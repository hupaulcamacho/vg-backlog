DROP DATABASE IF EXISTS vgbacklog_db;
CREATE DATABASE vgbacklog_db;

\c vgbacklog_db

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR,
    email VARCHAR,
    password VARCHAR
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    title VARCHAR,
    game_art VARCHAR,
    genre VARCHAR,
    year VARCHAR,
    platform VARCHAR
);

INSERT INTO users
    (username, email, password)
VALUES
    ('demouser', 'demoemail@demo.com', 'demo123');

INSERT INTO games
    (title, game_art, genre, year, platform)
VALUES
    ('Horizon Zero Dawn', 'https://www.mobygames.com/images/covers/l/471025-horizon-zero-dawn-playstation-4-front-cover.jpg', 'Action', '2017', 'PS4'),
    ('God of War', 'https://www.mobygames.com/images/covers/l/506072-god-of-war-playstation-4-front-cover.jpg', 'Action', '2018', 'PS4'),
    ('Astral Chain', 'https://www.mobygames.com/images/covers/l/587953-astral-chain-nintendo-switch-front-cover.jpg', 'Action', '2019', 'Nintendo Switch'),
    ('The Legend of Zelda: Breath of the Wild', 'https://www.mobygames.com/images/covers/l/541221-the-legend-of-zelda-breath-of-the-wild-nintendo-switch-front-cover.jpg', 'Action', '2017', 'Nintendo Switch'),
    ('Halo Infinite', 'https://www.mobygames.com/images/covers/l/782138-halo-infinite-campaign-windows-apps-front-cover.png', 'FPS', '2021', 'XBOX'),
    ('Forza Horizon 5', 'https://www.mobygames.com/images/covers/l/775616-forza-horizon-5-windows-apps-front-cover.jpg', 'Racing', '2021', 'XBOX');