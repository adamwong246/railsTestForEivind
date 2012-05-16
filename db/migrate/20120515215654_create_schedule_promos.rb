class CreateSchedulePromos < ActiveRecord::Migration
  def change
    create_table :schedule_promos do |t|
      t.timestamp :start_time
      t.timestamp :stop_time
      t.integer :app_id
      t.integer :promo_id

      t.timestamps
    end
  end
end
