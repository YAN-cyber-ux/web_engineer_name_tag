class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ edit update ]

  def edit; end

  def show; end

  def update
    if @user.update(user_params)
      redirect_to profile_path(@user), success: t('defaults.message.updated', item: User.model_name.human)
    else
      flash.now[:danger] = t('defaults.message.not_updated', item: User.model_name.human)
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_profile
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :nickname, :avatar, :avatar_cache)
  end
end
