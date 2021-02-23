class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @proverbs = @user.words.order("created_at DESC").page(params[:page]).per(9)
  end 

  def edit 
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render action: :edit
    end 
  end 

  private
  def user_params
    params.require(:user).permit(:username, :image)
  end
end
