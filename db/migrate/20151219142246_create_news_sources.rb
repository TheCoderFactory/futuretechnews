class CreateNewsSources < ActiveRecord::Migration
  def change
    create_table :news_sources do |t|
      t.string :name
      t.string :host_name
      t.string :favicon

      t.timestamps null: false
    end
  end
end
