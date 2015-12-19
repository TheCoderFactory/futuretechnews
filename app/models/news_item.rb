class NewsItem < ActiveRecord::Base
	validates :url, presence: true
end
