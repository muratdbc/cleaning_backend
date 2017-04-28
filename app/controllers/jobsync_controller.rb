class JobsyncController < ApplicationController
  require 'job_sync'
  require 'external_calendar'
  def sync
    icalendar=JobSync.get_icalendar
    events_array=ExternalCalendar.convert_to_array_of_events(icalendar)
  end
end
