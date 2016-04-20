get '/login' do

	erb :'/sessions/login'
end

post '/login' do
	@user = User.find_by(email: params[:user][:email])
	if @user && @user.authenticate(params[:user][:password])
		session[:user_id] = @user.id
		redirect "/questions/index"
	else
		@errors = @user.errors.full_messages

		erb :'/sessions/login'
	end
end