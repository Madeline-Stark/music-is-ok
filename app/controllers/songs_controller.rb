class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]
  
  def show
    
  end

  def new
    @artist = Artist.find_by(id: params[:artist_id])
    if @artist
      #make a new song and associate it with artist
      @song = @artist.songs.build
    else
      @song = Song.new
    end
  end

  def create 
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def index
    @artist = Artist.find_by(id: params[:artist_id])
    if @artist 
      @songs = @artist.songs
    else
      @songs = Song.all
    end
  end 

  def edit

  end 

  def update
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end 

  def current_artist
    Artist.first
  end

  def set_song 
    @song = Song.find(params[:id])
  end

end
