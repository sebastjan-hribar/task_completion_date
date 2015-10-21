require_relative "task_completion_date/version"
require 'date'

def calculate_task_completion(start_date, task_start_time, work_end_time, workload, work_hours_in_day, holidays)
  time_left_first_day = work_end_time - task_start_time
  no_of_days_for_task = (workload - time_left_first_day) / work_hours_in_day
  portion = (workload - time_left_first_day) % work_hours_in_day
    
  target_date = start_date + no_of_days_for_task
  
  range = start_date..target_date
  
  days_to_add = 0
  
  holidays.each do |holiday|
    if range.include? holiday
      days_to_add += 1
    end
  end
  
  range.each {|day|
    if day.saturday?
      days_to_add += 1
    elsif day.sunday?
      days_to_add += 1
    end
    }
  
  target_date1 = target_date + days_to_add

  final_day = target_date1 + 1
  final_hour = 9 + portion
  puts "Task completion date and time are: #{final_day}, #{final_hour}."
end