class ExternalCalendar
  require 'icalendar'
  def self.processCalendar(calendar)
    cals = Icalendar::Calendar.parse(calendar)
    cal = cals.first # you can have many calendars on a single ics file
    events = cal.events + cal.freebusys + cal.todos + cal.journals
    events.each do |event|
      p event
    end
  end
end
