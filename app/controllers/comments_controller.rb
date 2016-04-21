get '/comments/new' do
  erb :'/comments/new'
end

post '/comments' do
# binding.pry

  @comment = Comment.new(params[:comment].merge(user_id: session[:user_id], commentable_id: params[:commentable_id], commentable_type: params[:comment_type]))
  @question = Question.find_by(id: params[:question_id])
  # @comment.user_id = session[:user_id]
  # @comment.commentable_id = params[:question]
  # @comment.commentable_type = "Question"
  if @comment.save
    redirect "/questions/#{@question.id}"
  end

end
