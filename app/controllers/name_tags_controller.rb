class NameTagsController < ApplicationController
  before_action :set_name_tag, only: %i[show edit update destroy]

  def index
    @name_tags = NameTag.all.includes(:user).order(created_at: :desc)
  end

  def show; end

  def new
    @name_tag = NameTag.new
    @logos = Logo.all
  end

  def edit; end

  def update; end

  def create
    @name_tag = current_user.name_tags.build(name_tags_params)
    if @name_tag.save
      redirect_to name_tags_path, success: t('defaults.message.created', item: NameTag.model_name.human)
    else
      flash.now[:danger] = t('defaults.message.not_created', item: NameTag.model_name.human)
      @logos = Logo.all
      render :new, status: :unprocessable_entity
    end
  end

  def destroy; end

  private

  def set_name_tag
    @name_tag = NameTag.find(params[:id])
  end

  def name_tags_params
    params.require(:name_tag).permit(:publicity, logo_ids: [])
  end
end
