class Song < ApplicationRecord
    belongs_to :artist
    has_many :song_genres
    has_many :genres, through: :song_genre
end
