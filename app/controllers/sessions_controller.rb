class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: session_params[:email])
    if @user
      session[:user_id] = @user.id
      redirect_to posts_url
    else
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to posts_url
  end


  private

  def session_params
     params.require(:session).permit(:email, :password)
  end

end
