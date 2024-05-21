--Название и продолжительность самого длительного трека.
SELECT track_title, duration FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_title FROM tracks
WHERE duration > 209;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT compilation_title FROM compilations
WHERE release_year = '2018' OR release_year = '2019' OR release_year = '2020';

--Исполнители, чьё имя состоит из одного слова.
SELECT artist_name FROM artists
WHERE artist_name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT track_title FROM tracks
WHERE track_title LIKE '%my%' OR track_title LIKE '%мой%' OR track_title LIKE '%My%' OR track_title LIKE '%Мой%';

--Количество исполнителей в каждом жанре.
SELECT g.genre_name, COUNT(ag.artist_id) AS artist_count
FROM genres g
JOIN artistgenres ag ON g.genre_id = ag.genre_id
GROUP BY g.genre_name;

--Количество треков, вошедших в альбомы 2019–2020 годов.ответ 8, по четыре из альбомов - 
SELECT COUNT(t.track_id) AS total_track_count
FROM albums a
JOIN tracks t ON a.album_id = t.album_id
WHERE a.release_year IN ('2019', '2020');

--Средняя продолжительность треков по каждому альбому.
SELECT 
    a.album_title,    
    AVG(t.duration) AS average_duration
FROM 
    albums a
JOIN 
    tracks t ON a.album_id = t.album_id
GROUP BY 
    a.album_title;

--Все исполнители, которые не выпустили альбомы в 2020 году. Только Винтаж имеет альбом Навсегда в 2020
SELECT DISTINCT aa.artist_id, a.artist_name
FROM albumartists aa
JOIN artists a ON aa.artist_id = a.artist_id
WHERE aa.artist_id NOT IN (
    SELECT aa1.artist_id
    FROM albumartists aa1
    JOIN albums al ON aa1.album_id = al.album_id
    WHERE al.release_year = '2020'
);

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT c.compilation_title
FROM compilations c
JOIN compilationtracks ct ON c.compilation_id = ct.compilation_id
JOIN tracks t ON ct.track_id = t.track_id
JOIN albums a ON t.album_id = a.album_id
JOIN albumartists aa ON a.album_id = aa.album_id
JOIN artists a1 ON aa.artist_id = a1.artist_id
WHERE a1.artist_name = 'Винтаж'
AND aa.album_id IN (
    SELECT album_id
    FROM albumartists
    WHERE artist_id = (
        SELECT artist_id
        FROM artists
        WHERE artist_name = 'Винтаж'
    )
);
