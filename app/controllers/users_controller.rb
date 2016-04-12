class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
        flash[:success] = 'You are registered!'
        redirect_to items_path
    else
        flash[:error] = 'Registration has failed!'
        render new_user_path(@user)
    end
  end

  def new
    @user = User.new
  end

  def update
  end

  def show
    @user = User.find(params[:id])
  end

  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
