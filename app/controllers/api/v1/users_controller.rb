class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:update, :destroy]

  def index
    users = User.all
    render json: users
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: user.errors
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def set_user
    user = User.find(params[:id])
  end
end
