require 'sinatra'
require_relative 'tapas'

get '/get/:username/:password/*' do
  request = Tapas::Request.new url, params
  response = Tapas::Response.new request

  content_type response.content_type
  status response.status
  response.body
end
