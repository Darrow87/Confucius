post '/questions/:id/vote' do
@question = Question.find_by(id: params[:id])
@comments = @question.comments
votes = @question.votes
@question_vote_count = sum_votes(votes)

  if logged_in?
    vote = params[:vote_num].to_i
    @vote = @question.votes.create(voteable_type: params[:type], value: vote, user_id: session[:user_id])
    redirect "/questions/#{@question.id}"
  else
    @vote_errors = ["You must be logged in to vote!"]
    erb :'questions/show'
  end
end


post '/answers/:id/vote' do
@question = Question.find_by(id: params[:id])
@comments = @question.comments
votes = @question.votes
@question_vote_count = sum_votes(votes)
  if logged_in?
    vote = params[:vote_num].to_i
    @answer = Answer.find_by(id: params[:id])
    @vote = @answer.votes.create(voteable_type: params[:type], value: vote, user_id: session[:user_id])
  else
   @vote_errors = ["You must be logged in to vote!"]
  erb :'questions/show'
  end

end
