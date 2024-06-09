class StaticPagesController < ApplicationController
  skip_before_action :require_login, only: %i[landing]
  def landing
  end
end
