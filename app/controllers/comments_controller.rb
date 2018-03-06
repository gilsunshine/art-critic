class CommentsController < ApplicationController

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to "/artworks/#{session[:user_id]}"
    else
      render "/artworks/#{session[:user_id]}"
    end
  end

  def updated
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to "/artworks/#{session[:user_id]}"
  end

  def destroy
    byebug
    @comment = Comment.find(params[:comment_id])
    @comment.destroy
    redirect_to "/artworks/#{session[:user_id]}"
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :artwork_id, :user_id)
  end
end
