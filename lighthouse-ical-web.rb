require 'sinatra'
require 'lighthouse-ical'

get '/' do
	Lighthouse.account = 'your-account'
	Lighthouse.token = 'your-token'
	LighthouseIcal.create_calendar_for_project_id(123)
end
