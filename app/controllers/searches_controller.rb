class SearchesController < ApplicationController

  def new
    @search = Search.new
    @styles = Tag.where(category: :style).uniq
    @media = Tag.where(category: :medium).uniq
  end

  def create
    @search = Search.create(search_params)
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:name, :after_year, :before_year, :style, :artist_name, :medium, :tags)
  end

end
