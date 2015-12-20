class NewsItem < ActiveRecord::Base
	validates :url, presence: true
	belongs_to :user
	acts_as_taggable

	def self.recent
		order(created_at: :desc)
	end
end
