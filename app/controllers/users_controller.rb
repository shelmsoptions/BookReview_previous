class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update( user_params )
      redirect_to books_path
    else
      flash[:alert] = @user.errors.full_messages
      redirect_to "/users/#{session[:user_id]}/edit"
    end
  end

  def destroy
  end
  
end
