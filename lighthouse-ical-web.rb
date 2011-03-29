require 'sinatra'
require 'lighthouse-ical'
require 'erb'

get '/' do
	erb :index
end

post '/' do
	erb :showurl
end

get %r{^/([0-9a-zA-Z]+)/([0-9a-zA-Z]+)/(\d+)$} do
	account = params[:captures][0]
	token = params[:captures][1]
	projectid = params[:captures][2].to_i
	
	Lighthouse.account = account
	Lighthouse.token = token
	LighthouseIcal.create_calendar_for_project_id(projectid)
end