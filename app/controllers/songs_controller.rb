class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def oasis
  end

  def index
    @artist = Artist.find_by(id: params[:artist_id])
    if @artist 
      @songs = @artist.songs
    else
      @songs = Song.all
    end
  end 

end
