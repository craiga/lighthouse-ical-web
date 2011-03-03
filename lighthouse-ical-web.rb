require 'sinatra'
require 'lighthouse-ical'

get '/' do
	'TODO: Build home page<br />'
	'http://foobar.heroku.com/account/token/projectid'
	# Lighthouse.account = 'your-account'
	# Lighthouse.token = 'your-token'
	# LighthouseIcal.create_calendar_for_project_id(123)
end


get %r{^/([0-9a-zA-Z]+)/([0-9a-zA-Z]+)/([0-9a-zA-Z]+)$} do
	account = params[:captures][0]
	token = params[:captures][1]
	projectid = params[:captures][1].to_i
	
	Lighthouse.account = account
	Lighthouse.token = token
	LighthouseIcal.create_calendar_for_project_id(projectid)
end
