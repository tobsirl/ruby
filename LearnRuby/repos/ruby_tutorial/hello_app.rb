require 'sinatra'
require './greeting'

get '/' do
  greeting(Time.now)
end