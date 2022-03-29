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

-- genres: Action, FPS, RPG
INSERT INTO games
    (title, game_art, genre, year, platform)
VALUES
    ('Horizon Zero Dawn', 'https://www.mobygames.com/images/covers/l/471025-horizon-zero-dawn-playstation-4-front-cover.jpg', 'Action', '2017', 'PS4'),
    ('God of War', 'https://www.mobygames.com/images/covers/l/506072-god-of-war-playstation-4-front-cover.jpg', 'Action', '2018', 'PS4'),
    ('Ghosts of Tsushima', 'https://www.mobygames.com/images/covers/l/666918-ghost-of-tsushima-playstation-4-front-cover.png', 'Adventure', '2020', 'PS4'),
    ('Final Fantasy VII Remake', 'https://www.mobygames.com/images/covers/l/630722-final-fantasy-vii-remake-playstation-4-front-cover.png', 'RPG', '2020', 'PS4'),
    ('The Last Of Us 2', 'https://www.mobygames.com/images/covers/l/761679-the-last-of-us-part-ii-playstation-4-front-cover.jpg', 'Adventure', '2020', 'PS4'),
    ('The Division 2', 'https://www.mobygames.com/images/covers/l/546873-tom-clancy-s-the-division-2-playstation-4-front-cover.png', 'Shooter', '2019', 'PS4'),

    ('Astral Chain', 'https://www.mobygames.com/images/covers/l/587953-astral-chain-nintendo-switch-front-cover.jpg', 'Action', '2019', 'NSW'),
    ('The Legend of Zelda: Breath of the Wild', 'https://www.mobygames.com/images/covers/l/541221-the-legend-of-zelda-breath-of-the-wild-nintendo-switch-front-cover.jpg', 'Adventure', '2017', 'NSW'),
    ('Xenoblade Chronicles 2', 'https://www.mobygames.com/images/covers/l/476214-xenoblade-chronicles-2-nintendo-switch-front-cover.jpg', 'RPG', '2017', 'NSW'),
    ('Splatoon 2', 'https://www.mobygames.com/images/covers/l/508456-splatoon-2-nintendo-switch-front-cover.jpg', 'Shooter', '2017', 'NSW'),


    ('Halo Infinite', 'https://www.mobygames.com/images/covers/l/782138-halo-infinite-campaign-windows-apps-front-cover.png', 'Shooter', '2021', 'XBOX'),
    ('Forza Horizon 5', 'https://www.mobygames.com/images/covers/l/775616-forza-horizon-5-windows-apps-front-cover.jpg', 'Racing', '2021', 'XBOX'),
    ('Ori and the Will of the Wisps', 'https://www.mobygames.com/images/covers/l/632978-ori-and-the-will-of-the-wisps-windows-apps-front-cover.jpg', 'Platformer', '2020', 'XBOX'),
    ('The Witcher 3: Wild Hunt', 'https://www.mobygames.com/images/covers/l/305109-the-witcher-3-wild-hunt-xbox-one-front-cover.png', 'RPG', '2015', 'XBOX'),

    ('Control', 'https://www.mobygames.com/images/covers/l/572770-control-xbox-one-front-cover.jpg', 'Action', '2019', 'PC'),
    ('Cyberpunk 2077', 'https://www.mobygames.com/images/covers/l/721386-cyberpunk-2077-windows-other.jpg', 'RPG', '2020', 'PC'),
    ('Star Renegades', 'https://www.mobygames.com/images/covers/l/721689-star-renegades-windows-front-cover.jpg', 'Strategy', '2020', 'PC');