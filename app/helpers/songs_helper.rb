module SongsHelper
    def select_artist(song)
        if song.artist 
            hidden_field_tag("song[artist_id]", song.artist.id)
        else
            select_tag("song[artist_id", options_from_collection_for_select(Artist.all, :id, :name))
            #<%= f.collection_select :artist_id, Artist.all, :id, :name %>
        end
    end
end
