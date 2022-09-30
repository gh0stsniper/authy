class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      login(params[:user][:email],params[:user][:password])
      redirect_to auth_index_path

    else

      render 'new'

    end

  end

  private
    def user_params

      params.require(:user).permit(:email,:password)
    end
end
