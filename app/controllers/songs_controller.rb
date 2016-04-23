class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
      @song = Song.new
      @song.artist_id = params[:artist_id]
   end

   def create
      song = Song.new( song_params )

      if song.save
         redirect_to artist_path(song.artist_id)
      else
         render new_song_path
      end
   end

   private


   def song_params
     params.require(:song).permit(:title, :artist_id)
   end

end
