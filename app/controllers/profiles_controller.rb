class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ edit update ]

  def edit; end

  def show; end

  def update
  end

  private

  def set_profile
    @user = User.find(params[:id])
  end

  def profile_params
    params.require(:user).permit(:email, :nickname, :avatar, :avatar_cache)
  end
end
