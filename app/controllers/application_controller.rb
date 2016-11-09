class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def ensure_authenticated
    unless logged_in?
      redirect_to new_session_path
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def current_user
    @current_user ||=
      User.where(id: session[:user_id]).first
  end

  def ensure_verified
    unless verified?
      redirect_to new_verification_path
    end
  end

  def verified?
    session[:verified]
  end
end
