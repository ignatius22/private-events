 class SessionsController < ApplicationController
  
  def new; end

  def create
    if params[:session][:username].blank?
      render 'new'
      flash.notice = 'Please enter your name'
    else
      user = User.find_by_name(params[:session][:username])
      if user.present?
        session[:user_id] = user.id
        redirect_to root_url, notice: 'Logged in!'
      else
        flash.now[:alert] = 'sign up before you login'
        render 'new'
      end
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged out!'
  end
end