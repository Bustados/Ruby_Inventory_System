class HomeController < ApplicationController
  def index
    if current_user
      redirect_to assets_path
    end
  end
end
