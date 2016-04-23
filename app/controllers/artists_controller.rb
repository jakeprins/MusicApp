class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(name: :asc)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
      @artist = Artist.new
   end

   def create
      artist = Artist.new( artist_params )

      if artist.save
         redirect_to artists_path
      else
         render 'new'
      end
   end

private


def artist_params
  params.require(:artist).permit(:name, :image)
end
end
