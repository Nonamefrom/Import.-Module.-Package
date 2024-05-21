-- Строки начинающиеся с двух дефисов - коментарии к таблицам-отношениям.

-- Создание таблицы жанров
CREATE TABLE IF NOT EXISTS Genres (
    genre_id SERIAL PRIMARY KEY,
    genre_name VARCHAR(100) NOT NULL UNIQUE
);

-- Создание таблицы для исполнителей
CREATE TABLE IF NOT EXISTS Artists (
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(100) NOT NULL
);

-- Создание таблицы для связи между исполнителями и жанрами
CREATE TABLE IF NOT EXISTS ArtistGenres (
    artist_id INT REFERENCES Artists(artist_id),
    genre_id INT REFERENCES Genres(genre_id),
    PRIMARY KEY (artist_id, genre_id)
);

-- Создание таблицы для альбомов
CREATE TABLE IF NOT EXISTS Albums (
    album_id SERIAL PRIMARY KEY,
    album_title VARCHAR(255) NOT NULL,
    release_year CHAR(4)
);

-- Создание таблицы для связи между альбомами и исполнителями
CREATE TABLE IF NOT EXISTS AlbumArtists (
    album_id INT REFERENCES Albums(album_id),
    artist_id INT REFERENCES Artists(artist_id),
    PRIMARY KEY (album_id, artist_id)
);

-- Создание таблицы для треков
CREATE TABLE IF NOT EXISTS Tracks (
    track_id SERIAL PRIMARY KEY,
    track_title VARCHAR(255) NOT NULL,
    duration INT,
    -- Внешний ключ для связи с альбомами
    album_id INT REFERENCES Albums(album_id)
);

-- Создание таблицы для сборников
CREATE TABLE IF NOT EXISTS Compilations (
    compilation_id SERIAL PRIMARY KEY,
    compilation_title VARCHAR(255) NOT NULL,
    release_year CHAR(4)
);

-- Создание таблицы для связи между треками и сборниками
CREATE TABLE IF NOT EXISTS CompilationTracks (
    compilation_track_id SERIAL PRIMARY KEY,
    track_id INT REFERENCES Tracks(track_id),
    compilation_id INT REFERENCES Compilations(compilation_id)
);