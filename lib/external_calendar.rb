class ExternalCalendar
  require 'icalendar'
  def self.convert_to_array_of_events(calendar)
    cals = Icalendar::Calendar.parse(calendar)
    cal = cals.first
    events = cal.events
    events_array=[]
    events.each do |event|
      events_array.push(to_hash(event))
    end
    return events_array
  end
  def self.to_hash(event)
    calendar_hash={}
    calendar_hash["startDate"]=event.dtstart.to_date
    calendar_hash["endDate"]=event.dtend.to_date
    calendar_hash["summary"]=event.summary
    calendar_hash["location"]=event.location
    calendar_hash["description"]=event.description
    return calendar_hash
  end
end
