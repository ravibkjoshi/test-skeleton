get '/channels' do
	@channels = Channel.all
	erb :'index'
end

get '/channel/:id' do
  erb :id
end