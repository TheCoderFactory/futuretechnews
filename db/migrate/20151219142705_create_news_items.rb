class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :title
      t.string :favicon
      t.text :description
      t.text :main_image
      t.text :url

      t.timestamps null: false
    end
  end
end
