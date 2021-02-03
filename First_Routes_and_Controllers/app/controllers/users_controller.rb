class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end
  
  def create
    user = User.new(user_params)
    user.save!
    render json: user
  end

  def show
    render json: user
  end

  def user_params
        params.require(:user).permit(:name, :email)
    end
end
