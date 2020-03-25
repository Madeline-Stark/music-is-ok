class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def oasis
  end

  def index
    @songs = Song.all
  end 

end
