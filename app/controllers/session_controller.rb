class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by( :email => params[:email] )

    if user.present? && user.authenticate( params[:password] )
      # flash[:success] = "#{@current_user}User successfully logged in"
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:error] = "Your password or email is incorrect"
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "You successfully logged out"
    redirect_to root_path
  end
end
