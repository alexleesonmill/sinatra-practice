require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello!'
end

get '/secret' do
  'Oi you!'
end

get '/super' do
  'Oi not you!'
end

get '/random-cat' do
  @names = %w[Amigo Oscar Viking].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @names = params[:name]
  erb(:index)
end
