require 'sinatra'
require 'shotgun'

get '/' do
  'Hello world!'
end

get '/secret' do
  'Secret message new'
end

get '/secret/new' do
  'extra secret message'
end

get '/cat' do
  erb(:index)
end
