class UsersController < ApplicationController
  def user_params
    params.permit([:user_name, :name, :age, :country, :password, :password_confirmation])
  end
  def create
    User.create! user_params
    render json: {status: 'ok'}
  end
end
