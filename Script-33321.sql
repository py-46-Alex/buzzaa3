create table if not exists artist (id serial primary key, name varchar(90) unique);

create table if not exists ganre (ganre_id serial primary key, genre_what varchar(90));

create table if not exists artist_genre (id_artist integer references artist(id),
id_genre integer references ganre(ganre_id));

create table if not exists albums (album_id serial primary key, 
name_album varchar(90) unique, year integer);

create table if not exists albums_artist ( al_id integer references albums(album_id),
arti_id integer references artist(id));

create table if not exists track_info (track_id serial primary key,
name_trak varchar(90) unique, time_of_track_sec integer, id_albom integer references albums(album_id));

create table if not exists collection (id_collection serial primary key, 
name_collection varchar(90) unique, year_collect integer);

create table if not exists collection_artist (id_colle integer references collection(id_collection),
id_arti integer references artist(id)); 
