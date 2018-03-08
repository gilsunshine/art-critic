class ArtworksController < ApplicationController

  before_action :get_artwork, only: [:show]
  def index
    @artworks = Artwork.search(params[:search])
  end

  def show
    @comments = Comment.all.where(artwork_id: params[:id])
    @comment = Comment.new
    @votes = Vote.all.where(artwork_id: params[:id])
    @vote_num = @votes.map{|vote| vote.value }.sum
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
      @style_tag = Tag.find_or_create_by(category: "custom style", name: params[:artwork][:style].capitalize) ##this allows user to create new custom tag where style tag already exists
      ArtworkTag.create(artwork_id: @artwork.id, tag_id: @style_tag.id)
      @medium_tag = Tag.find_by( name: params[:artwork][:medium].capitalize) ## but this might find a custom tag of the wrong category
      if !@medium_tag
        @medium_tag = Tag.create(category: "custom medium", name: params[:artwork][:medium].capitalize)
      end
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
      params.require(:artwork).permit(:name, :user_id, :image).merge(user_id: current_user.id)
    end


end
