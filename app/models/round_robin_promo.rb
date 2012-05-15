class RoundRobinPromo < ActiveRecord::Base
  attr_accessible :duration, :position, :app_id, :promo_id

  
  belongs_to :app
  belongs_to :promo

  validates :duration, :position, :app_id, :promo_id, :presence => true
  validates :position, :uniqueness => true
  
end
