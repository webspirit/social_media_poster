class PagesController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
  def home
  	redirect_to dashboard_path if current_user
  end

  def dashboard
  end
end
