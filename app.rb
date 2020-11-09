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

get '/cat' do
  @names = %w[Amigo Oscar Viking].sample
  erb(:index)
end
