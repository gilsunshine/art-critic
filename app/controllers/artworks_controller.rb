class ArtworksController < ApplicationController

  before_action :get_artwork, only: [:show]
  def index
    @artworks = Artwork.all
  end

  def show
  end

  private

    def get_artwork
      @artwork = Artwork.find(params[:id])
    end


end
