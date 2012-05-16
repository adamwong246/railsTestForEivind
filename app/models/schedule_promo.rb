class SchedulePromo < ActiveRecord::Base
  attr_accessible :app_id, :promo_id, :start_time, :stop_time

  belongs_to :app
  belongs_to :promo
end
