create table if not exists artist (id serial primary key, name varchar(90) unique, band varchar(90) unique);
create table if not exists albums (album_id serial primary key, artist_name varchar(90) unique, album_name varchar(90), year integer);
create table if not exists track_info (track_id serial primary key, track_name varchar(90), time_of_track integer, album_in_id integer references albums(album_id));
create table if not exists collect_all (id serial primary key, coll_names varchar(90) unique);
create table if not exists collection (id_collection serial primary key, name_collection text references collect_all(coll_names), track_id integer references track_info(track_id));
create table if not exists genres_all (id serial primary key, gen_name varchar(90) unique);
create table if not exists ganre (ganre_name integer references genres_all(id), artist_id integer references artist(id));