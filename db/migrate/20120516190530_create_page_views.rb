class CreatePageViews < ActiveRecord::Migration
  def change
    create_table :page_views do |t|
      t.text :url
      t.timestamp :time

      t.timestamps
    end
  end
end
