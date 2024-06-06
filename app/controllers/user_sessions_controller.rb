class UserSessionsController < ApplicationController
  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_or_back_to root_path
    else
      render :new
    end
  end

  def destroy
  end
end