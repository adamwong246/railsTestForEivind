class CreateRoundRobinPromos < ActiveRecord::Migration
  def change
    create_table :round_robin_promos do |t|
      t.integer :position
      t.integer :duration

      t.timestamps
    end
  end
end
