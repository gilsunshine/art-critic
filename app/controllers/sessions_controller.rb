class SessionsController < ApplicationController

  def new
  end

  def create
<<<<<<< HEAD
    if params[:password] && params[:password] != ""
=======
    if params[:password] && params[:password] != "" && params[:username] && params[:username] != ""
>>>>>>> 3a27cebef6124c56ac0920deecc819940804c228
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to "/users/#{@user.id}"
      else
        params[:errors] = "The username or password provided is incorrect."
        render :new
      end

    else
      params[:errors] = "Please provide a username and a password."
      render :new
    end
  end

  def destroy
    if params
      session.delete(:user_id)
      redirect_to '/login'
    else
      redirect_to '/login'
    end
  end


end
