class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
end

def current_user
    User.find(session[:current_user_id])
end
    
