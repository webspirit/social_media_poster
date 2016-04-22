class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  around_filter :default_time_zone, if: :current_user

	private

  def default_time_zone &block
  	Time.use_zone(current_user.time_zone, &block)
  end
end
