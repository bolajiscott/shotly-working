class PagesController < ApplicationController
  before_action :set_auth
  before_action :authenticate_user, only: :dashboard
  def index
    @link = Link.new
    @popular = Link.popular.limit(5) if Link.popular != nil
    @recent = Link.recent.limit(5)
    @top = User.top.limit(5)
  end

  def dashboard
      @link = Link.new
      @user = current_user
      @user_links = @user.links
  end

  private

  def set_auth
    @auth = session[:omniauth] if session[:omniauth]
  end
end
