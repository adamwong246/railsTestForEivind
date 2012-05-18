require 'rubygems'
require 'clockwork'
include Clockwork

#require 'config/boot'
#require 'config/environment'

every(1.second, 'reminder.deliver') {
  puts "mark" 
  #reminders = Reminder.find(:all, :conditions => ["reminder_at <= ? and reminder_at > ?", Time.now.advance(:minutes => 2), Time.now])
  #reminders = Reminder.find(:all, :conditions => ["reminder_at <= ?", #Time.now.advance(:minutes => 2)])
  #unless reminders.nil?
    #UserMailer.send_later( :deliver_event_reminder, reminders )
  #end
}  
