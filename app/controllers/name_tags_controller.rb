class NameTagsController < ApplicationController
  def index
    @name_tags = NameTag.all.includes(:user).order(created_at: :desc)
  end
end
