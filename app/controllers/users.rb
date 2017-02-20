#sign up
get '/users/new' do
@user = User.new
 erb :'users/new'
end  

post '/users' do 
	user = User.create(params[:user])
	if user.valid?
		redirect '/'
	else 
		@errors = ["Invalid Email or Password"]
		erb :'users/new'
	end
end 



get '/users/:id' do
@user = user.find(params[:id])
erb :'users/profile'
end 

#log out

delete '/sessions/:id' do

end 