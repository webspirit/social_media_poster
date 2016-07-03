class ConnectionsController < ApplicationController
  before_action :set_connection, only: :destroy
  def create
  	connection = current_user.connections.create_from_omniauth(auth_hash)

  	if connection.save
  		redirect_to edit_user_registration_path, notice: "Connection created."
  	else
  		redirect_to edit_user_registration_path, notice: "Something went wrong."
  	end
  end

  def destroy
  	@connection.destroy
  	redirect_to edit_user_registration_path, notice: "Connection deleted"
  end

  private

  def auth_hash
  	request.env['omniauth.auth']
  end

  def set_connection
  	@connection = Connection.find(params[:id])
  end
end
