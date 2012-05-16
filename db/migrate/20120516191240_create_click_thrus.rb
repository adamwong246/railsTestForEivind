class CreateClickThrus < ActiveRecord::Migration
  def change
    create_table :click_thrus do |t|
      t.text :url
      t.timestamp :time

      t.timestamps
    end
  end
end
