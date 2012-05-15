class AddAppIdToRoundRobinPromos < ActiveRecord::Migration
  def change
    add_column :round_robin_promos, :app_id, :integer
    add_index :round_robin_promos, :app_id
  end
end
