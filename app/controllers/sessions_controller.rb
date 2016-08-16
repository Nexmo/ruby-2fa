class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(username: params[:username]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else
      redirect_to new_session_path, alert: "Login incorrect"
    end
  end

  def destroy
    reset_session
    redirect_to :root
  end
end
