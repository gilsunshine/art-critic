class ApplicationController < ActionController::Base
 helper_method :current_user

 def index
 end

 def current_user
   return unless session[:user_id]
   @current_user ||= User.find(session[:user_id])
 end

end
