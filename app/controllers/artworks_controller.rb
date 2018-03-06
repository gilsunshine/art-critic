class ArtworksController < ApplicationController

  before_action :get_artwork, only: [:show]
  def index
    @artworks = Artwork.all
  end

  def show
    @comments = Comment.all.where(artwork_id: params[:id])
    @comment = Comment.new
    @votes = Vote.all.where(artwork_id: params[:id])
    @vote_num = @votes.inject(0){|sum,x| sum + x }

  end

  def new
    @artwork = Artwork.new
  end

  def create
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
      params.require(:artwork).permit(:name, :user_id, :image, :year).merge(user_id: current_user.id)
    end


end
