class UsersController < ApplicationController
  before_action :get_user, only: [:show, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end
  end

  def show
  end

  def index
    @users = User.all
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    end
  end

  private


    def get_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :username, :password, :password_confirmation, :image, :bio)
    end

end
