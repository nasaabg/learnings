require 'sinatra'
require "sinatra/reloader" if development?
require 'json'

get '/index' do
  puts JSON.pretty_generate(request.env)
  "Hello from port: #{settings.port}\n"
end
