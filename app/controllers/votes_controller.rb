post '/questions/:id/vote' do
  if logged_in?
    vote = params[:vote_num].to_i
    @question = Question.find_by(id: params[:id])
    @vote = @question.votes.create(voteable_type: params[:type], value: vote, user_id: session[:user_id])
    redirect "/questions/#{@question.id}"
  end
end

post '/answers/:id' do
  vote = params[:vote_num].to_i
  @answer = Answer.find_by(id: params[:id])
  @vote = @answer.votes.create(voteable_type: params[:type], value: vote, user_id: session[:user_id])
  redirect "/questions/#{@answer.question_id}"
end
