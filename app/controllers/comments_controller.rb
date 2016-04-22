get '/comments/new' do
  erb :'/comments/new'
end

post '/comments' do
  @comment = Comment.new(params[:comment].merge(user_id: session[:user_id], commentable_id: params[:commentable_id], commentable_type: params[:comment_type]))
  @question = Question.find_by(id: params[:question_id])
  if @comment.save
    if request.xhr?
      erb :'/_comment', layout: false, locals: {comment: @comment}
    else
    redirect "/questions/#{@question.id}"
    end
  else
      @errors = @comment.errors.full_messages
    erb :'/questions/show'
  end
end
