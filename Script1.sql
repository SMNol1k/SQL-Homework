create table genre (
	genre_id SERIAL primary key,
	genre_name VARCHAR(255)
);

create table artist (
	artist_id SERIAL primary key,
	artist_name VARCHAR(255)
);

create table genre_artists(
	genre_id INT REFERENCES genre(genre_id),
	artist_id INT REFERENCES artist(artist_id)
);

create table albums (
	albums_id SERIAL primary key,
	albums_name VARCHAR(255),
	date_release INT
);

create table albums_artists (
	artist_id INT REFERENCES artist(artist_id),
	albums_id INT REFERENCES albums(albums_id)
);

create table tracks (
	albums_id INT REFERENCES albums(albums_id),
	track_name VARCHAR(255),
	track_duration INT,
	track_id SERIAL primary key
);

create table complications (
	coplication_id SERIAL primary key,
	complication_name VARCHAR(255),	
	release_year INT	
);

create table complications_tracks (
	coplication_id INT REFERENCES complications(coplication_id),
	track_id INT REFERENCES tracks(track_id)
);