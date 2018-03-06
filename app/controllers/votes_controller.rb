class VotesController < ApplicationController

  def like
    @vote = Vote.find_by(user_id: session[:user_id], artwork_id: params[:artwork_id])
    if @vote
    else
      Vote.create(user_id: session[:user_id], artwork_id: params[:artwork_id], value: 1)
    end
    redirect_to artwork_path(params[:artwork_id])
  end

  def dislike
    @vote = Vote.find_by(user_id: session[:user_id], artwork_id: params[:artwork_id])
    if @vote
    else
      Vote.create(user_id: session[:user_id], artwork_id: params[:artwork_id], value: -1)
    end
    redirect_to artwork_path(params[:artwork_id])
  end

end
