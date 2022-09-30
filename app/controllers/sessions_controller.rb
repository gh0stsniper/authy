class SessionsController < ApplicationController
  def new
  end

  def create

    if login(params[:email],params[:password])
      redirect_to auth_index_path

    else
      render 'new'
  end

end



  def destroy

    logout #logout

    redirect_to root_path

  end
end
