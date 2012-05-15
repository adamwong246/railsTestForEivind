class AddPromoIdToRoundRobinPromos < ActiveRecord::Migration
  def change
    add_column :round_robin_promos, :promo_id, :integer
    add_index :round_robin_promos, :promo_id
  end
end
