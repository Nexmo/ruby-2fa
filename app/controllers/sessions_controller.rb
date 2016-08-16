class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(username: params[:username]).first

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else
      flash[:alert] = "Login incorrect"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to :root
  end
end
