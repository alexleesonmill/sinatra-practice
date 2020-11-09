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

get '/form' do
  erb(:form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
