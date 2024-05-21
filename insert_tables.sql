--Наполнение табл. жанров
INSERT INTO genres(genre_name)
VALUES
('Rock'), ('Blues'), ('Pop'), ('Country');

--Наполнение табл. артистов
INSERT INTO artists(artist_name)
VALUES
('Keith Urban'), ('Аффинаж'), ('Винтаж'), ('Judas Priest'), ('Ray Charles'), ('CYGO');

--Наполнение промежуточной табл. артисты-жанры
INSERT INTO artistgenres (artist_id, genre_id)
VALUES
(1, 4), (2, 1), (3, 3), (4, 1), (5, 2), (6, 3);

--Наполнение табл. альбомов
INSERT INTO albums (album_title, release_year)
VALUES
(Firepower', 2018), ('Graffiti U', 2018), ('Ты, который нашёл', 2018), ('Turbo	1986', 2018), ('Genius Loves Company', 2004), ('Навсегда', 2020), ('Decamerone', 2014), ('Псих без неё не может', 2019);

--Наполнение промежуточной табл. артисты-альбомы
INSERT INTO albumartists (album_id, artist_id)
VALUES
(1, 4), (2, 1), (3, 2), (4, 4), (5, 5), (6, 3), (7, 3), (8, 6);

--Наполнение табл. сборников
INSERT INTO compilations (compilation_title, release_year)
VALUES
('Europe+ Top 100', 2015), ('PopChart', 2019), ('Rock And Rock', 2020), ('Blues Mans Songs', 1983), ('Around country', 2020), ('Best of the best', 2022);

--
INSERT INTO compilationtracks (track_id, compilation_id)
VALUES
(13, 1), (6, 1), (9, 1), (2, 2), (13, 2), (5, 2), (27, 3), (33, 3), (30, 3), (22, 4), (23, 4), (24, 4), (19, 5), (21, 5), (18, 5), (10, 6), (23, 6),
(13, 6);

--Наполнение табл. треков
INSERT INTO tracks (track_title, duration, album_id)
VALUES
('Псих без неё не может', 211, 8),
('Ты грех', 192, 8),
('Черная роза', 251, 8),
('Ааа', 179, 8),
('Удивительный мир', 213, 6),
('Вавилон', 248, 6),
('Преступление и наказание', 197, 6),
('Фреди и Джордж', 279, 6),
('ДНК', 307, 7),
('Знак Водолея', 258, 7),
('Религия', 287, 7),
('Инфанта', 254, 7),
('Panda E', 282, null),
('Солнце', 242, 3),
('Мой главный враг', 187, 3),
('Радость', 224, 3),
('Музыка', 140, 3),
('Coming Home', 213, 2),
('Same Heart', 216, 2),
('My Wave', 213, 2),
('Gemini', 249, 2),
('Fever', 211, 5),
('Siners Prayer', 265, 5),
('Hey Girl', 316, 5),
('Crazy Love', 225, 5),
('Firepower', 307, 1),
('Spectre', 265, 1),
('Lone Wolf', 309, 1),
('Necromancer', 213, 1),
('Turbo Lover', 333, 4),
('Locked In', 259, 4),
('Private Property', 269, 4),
('Reckless', 257, 4);
