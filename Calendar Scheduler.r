class Event
  attr_accessor :title, :date, :start_time, :end_time

  def initialize(title, date, start_time, end_time)
    @title = title
    @date = date
    @start_time = start_time
    @end_time = end_time
  end

  def to_s
    "#{@title} - #{@date}, #{@start_time} to #{@end_time}"
  end
end

class CalendarScheduler
  def initialize
    @events = []
  end

  def add_event(title, date, start_time, end_time)
    event = Event.new(title, date, start_time, end_time)
    @events << event
    puts "Event '#{title}' scheduled on #{@date} from #{@start_time} to #{@end_time}."
  end

  def view_events
    if @events.empty?
      puts "No events scheduled yet."
    else
      puts "Scheduled Events:"
      @events.each { |event| puts event }
    end
  end
end

# Example usage
calendar_scheduler = CalendarScheduler.new

calendar_scheduler.add_event("Meeting", "2024-04-30", "10:00 AM", "11:00 AM")
calendar_scheduler.add_event("Lunch", "2024-04-30", "12:00 PM", "1:00 PM")

calendar_scheduler.view_events
