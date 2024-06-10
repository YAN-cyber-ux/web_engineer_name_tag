class NameTagsController < ApplicationController
  def index
    @name_tags = NameTag.all.includes(:user).order(created_at: :desc)
  end

  def new
    @name_tag = NameTag.new
  end

  def create
    @name_tag = current_user.name_tags.build(name_tags_params)
    if @name_tag.save
      redirect_to name_tags_path, success: t('defaults.message.created', item: NameTag.model_name.human)
    else
      flash.now[:danger] = t('defaults.message.not_created', item: NameTag.model_name.human)
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @name_tag = NameTag.find(params[:id])
  end

  private

  def name_tags_params
    params.require(:name_tag).permit(:publicity)
  end
end
