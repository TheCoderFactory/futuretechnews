class HomeController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	@news_item = NewsItem.new
  	@news_items = NewsItem.recent
  end
end
