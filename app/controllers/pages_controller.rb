class PagesController < ApplicationController
  before_action :ensure_authenticated
  before_action :ensure_verified
  
  def index
  end
end
