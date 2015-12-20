class NewsItem < ActiveRecord::Base
	validates :url, presence: true

	acts_as_taggable

	def self.recent
		order(created_at: :desc)
	end
end
