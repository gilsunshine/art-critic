class ArtworksController < ApplicationController

  before_action :get_artwork, only: [:show]
  def index
    @artworks = Artwork.all
  end

  def show
  end

  def new
    @artwork = Artwork.new
  end

  def create
    byebug
    @artwork = Artwork.new(artwork_params)
    @artwork.user_id = session[:user_id]
    if @artwork.save
      redirect_to @artwork
    else
      render :new
    end
  end

  private

    def get_artwork
      @artwork = Artwork.find(params[:id])
    end

    def artwork_params
      params.require(:artwork).permit(:name, :user_id, :image)
    end


end
