class JobsyncController < ApplicationController
  require 'job_sync'
  require 'external_calendar'
  def sync
    icalendar=JobSync.getIcalendar
    ExternalCalendar.processCalendar(icalendar)
  end
end
