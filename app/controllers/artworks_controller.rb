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
    @artwork = Artwork.new(artwork_params)
    @artwork.user_id = session[:user_id]
    if @artwork.save
      @year_tag = Tag.find_or_create_by(category: "year", name: params[:artwork][:year])
      ArtworkTag.create(artwork_id: @artwork.id, tag_id: @year_tag.id)
      params[:artwork][:tag_ids].reject { |c| c.empty? }.each {|id| ArtworkTag.create(artwork_id: @artwork.id, tag_id: id.to_i) }
      @style_tag = Tag.find_or_create_by(category: "custom style", name: params[:artwork][:style])
      ArtworkTag.create(artwork_id: @artwork.id, tag_id: @style_tag.id)
      @medium_tag = Tag.find_or_create_by(category: "custom medium", name: params[:artwork][:medium])
      ArtworkTag.create(artwork_id: @artwork.id, tag_id: @medium_tag.id)
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
