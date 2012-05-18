
set :output, { :standard => "./whenever.standard.log", :error => "./whenever.errors.log" }

every 1.minute do
  runner 'SchedulePromosController.populate'
  command 'echo hello'
end

