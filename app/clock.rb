require 'rubygems'
require 'clockwork'
include Clockwork

require './config/boot.rb'
require './config/environment.rb'
#require './app/controllers/schedule_promos_controller.rb'

every(5.seconds, 'reminder.deliver') {
  
  puts Dir.pwd
  SchedulePromosController.populate
  #reminders = Reminder.find(:all, :conditions => ["reminder_at <= ? and reminder_at > ?", Time.now.advance(:minutes
}  
