class HomeController < ApplicationController
  def index
  	@news_item = NewsItem.new
  	@news_items = NewsItem.recent
  end
end
