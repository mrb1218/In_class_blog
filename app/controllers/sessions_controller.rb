class SessionsController < ApplicationController
  def new
  end

  def create
   session[:current_user_id] = User.find_by(name: params[:current_user]).id
  end
end
