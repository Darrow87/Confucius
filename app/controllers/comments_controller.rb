get '/comments/new' do
  erb :'/comments/new'
end

post '/comments' do
  @comment = Comment.new(params[:comment])
  @comment.commentable_id = params[:question]
  @comment.commentable_type = "Question"
  if @comment.save
    binding.pry
    redirect "/questions/#{params[:question]}"
  end
end
