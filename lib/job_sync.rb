class JobSync
  require 'open-uri'
  def self.getIcalendar
    open(Rails.application.config.rentlever_job_snyc_domain)
  end
end
