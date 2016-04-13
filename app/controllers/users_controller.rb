class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show, :create, :new]
  before_action :only_my_profile, only: [:edit, :update, :destroy]

  def create
    @user = User.new(user_params)
    if @user.save
        flash[:success] = 'You are registered!'
        redirect_to items_path, notice: 'New Account Created!'
        session[:user_id] = @user.id
    else
        flash[:error] = 'Registration has failed!'
        render new_user_path(@user), notice: 'Registration failed. Try again.'
    end
  end

  def new
    @user = User.new
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'User Profile Updated!'
      flash[:success] = 'Profile updated!'
    else
      render edit_user_path(@user), notice: 'User failed to update. Try again.'
      flash[:error] = 'User failed to update. Try again.'

    end
  end

  def edit
  end

  def show
  end

  def destroy
  end

  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def only_my_profile
    redirect_to root_path, notice: "You can't edit someone else's profile." if (current_user != @user)
  end
end
