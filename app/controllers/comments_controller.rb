class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      # byebug
      redirect_to "/artworks/#{@comment.artwork_id}"
    else
      redirect_to "/artworks/#{comment_params[:artwork_id]}"
    end
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to "/artworks/#{@comment.artwork_id}"
  end

  def destroy
    @comment = Comment.find(params[:comment_id])
    @comment.destroy
    redirect_to "/artworks/#{@comment.artwork_id}"
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :artwork_id, :user_id)
  end
end
