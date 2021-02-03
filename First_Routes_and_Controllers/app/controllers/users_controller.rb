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
    user = User.find(params[:id])
    render json: user
  end

  def update 
    user = User.find(params[:id])
    if user.update(user_params)
        redirect_to user_url(user)
    else
        render json: user.errors.full_message, status: :unprocessable_entity
    end
  end

  def destroy
  user = User.find(params[:id])
  user.destroy
#   redirect_to user_url
  end

  def user_params
        params.require(:user).permit(:name, :email)
    end
end
