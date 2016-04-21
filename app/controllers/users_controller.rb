get '/users/new' do
  erb :'/users/new'
end

post '/users' do
	@user = User.new(params[:user])
	if @user.save
		session[:user_id] = @user.id
		redirect "/questions"
	else
		@errors = @user.errors.full_messages
		erb :'/users/new'
	end
end

get '/users' do
	@users = User.all

	erb :'/users/index'
end

get '/users/:id' do

	@user = User.find_by(id: params[:id])

	erb :'/users/show'
end

get '/users/:id/edit' do
	# binding.pry
	@user = User.find_by(id: params[:id])
	if current_user == @user

		erb :'/users/edit'
	else
		# @errors = @user.errors.full_messages
		erb :'/users/index'
	end
end

put '/users/:id' do

	@user = User.find_by(id: params[:id])
	@user.update_attributes(params[:user])

	if @user.save
		redirect "/users/#{@user.id}"
	else
		@errors = @user.errors.full_messages

		erb :'/users/edit'
	end
end

delete '/users/:id' do
  @user = User.find(params[:id])
  halt(401, erb(:unauthorized)) unless current_user == @user
  @user.destroy
  redirect '/'
end



