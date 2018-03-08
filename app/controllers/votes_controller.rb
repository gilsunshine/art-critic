# class VotesController < ApplicationController
#
#   def like
#     @vote = Vote.find_or_create_by(user_id: session[:user_id], artwork_id: params[:artwork_id])
#     if @vote.value == -1 || @vote.value == 0
#       @vote.update(user_id: session[:user_id], artwork_id: params[:artwork_id], value: 1)
#       redirect_to artwork_path(params[:artwork_id])
#     else
#       @vote.update(user_id: session[:user_id], artwork_id: params[:artwork_id], value: 0)
#       redirect_to artwork_path(params[:artwork_id])
#     end
#   end
#
#   def dislike
#     @vote = Vote.find_or_create_by(user_id: session[:user_id], artwork_id: params[:artwork_id])
#     if @vote.value == 1 || @vote.value == 0
#       @vote.update(user_id: session[:user_id], artwork_id: params[:artwork_id], value: -1)
#       redirect_to artwork_path(params[:artwork_id])
#     else
#       @vote.update(user_id: session[:user_id], artwork_id: params[:artwork_id], value: 0)
#       redirect_to artwork_path(params[:artwork_id])
#     end
#   end
#
# end

class VotesController < ApplicationController


  def like
    byebug
    @vote = Vote.find_or_create_by(user_id: session[:user_id], artwork_id: params[:artwork_id])
    if @vote.value != 1
      @vote.update(user_id: session[:user_id], artwork_id: params[:artwork_id], value: 1)
      redirect_to artwork_path(params[:artwork_id])
    else
      @vote.update(user_id: session[:user_id], artwork_id: params[:artwork_id], value: 0)
      redirect_to artwork_path(params[:artwork_id])
    end
  end

  def dislike
    @vote = Vote.find_or_create_by(user_id: session[:user_id], artwork_id: params[:artwork_id])
    if @vote.value != -1
      @vote.update(user_id: session[:user_id], artwork_id: params[:artwork_id], value: -1)
      redirect_to artwork_path(params[:artwork_id])
    else
      @vote.update(user_id: session[:user_id], artwork_id: params[:artwork_id], value: 0)
      redirect_to artwork_path(params[:artwork_id])
    end
  end

end
