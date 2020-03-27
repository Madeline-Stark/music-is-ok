Artist
has_many :songs
name

Song
belongs_to :artist
has_many :song_genres
has_many :genres, through: :song_genre
title
artist_id

Genre
has_many :song_genres
has_many :songs, through: song_genre
name

Song_genre
belongs_to :genre
belongs_to :song
genre_id
song_id


To do:
make new form that associates song with artist