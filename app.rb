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

get '/random-cat' do
  @name = ['Ben', 'Ingrid', 'Kenny'].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
