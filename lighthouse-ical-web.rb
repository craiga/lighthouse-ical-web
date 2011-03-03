require 'sinatra'
require 'lighthouse-ical'

get '/' do
	Lighthouse.account = 'sitepoint'
	Lighthouse.token = '97773cd93c15f8a650d61991b41d1beeec8bd63b'
	LighthouseIcal.create_calendar_for_project_id(69822)
end
