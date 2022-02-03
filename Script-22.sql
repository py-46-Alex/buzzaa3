create user meloman2 with password 'meloman2';
create database muzofond2;
alter database muzofond2 owner to meloman2;
create table if not exists artist (id serial primary key, name varchar(90) unique, band varchar(90) unique);
create table if not exists albums (album_id serial primary key, artist_name varchar(90) unique, album_name varchar(90), year integer);
create table if not exists track_info (track_id serial primary key, track_name varchar(90), time_of_track integer, album_in_id integer references albums(album_id));
create table if not exists collection (id_collection serial primary key, name_collection varchar(90), track_id references track_info(track_id));
create table if not exists ganre(ganre_name varchar(90), artist_name text references artist(name), constraint pk primary key (ganre_name, artist_name));