class AddUserToNewsItem < ActiveRecord::Migration
  def change
    add_reference :news_items, :user, index: true, foreign_key: true
  end
end
