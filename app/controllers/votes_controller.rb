post '/questions/:id/vote' do
  if logged_in?
    vote = params[:vote_num].to_i
    @question = Question.find_by(id: params[:id])
    @vote = @question.votes.create(voteable_type: params[:type], value: vote, user_id: session[:user_id])
    votes = @question.votes
    @question_vote_count = sum_votes(votes).to_s
  else
    redirect "/questions/#{@question.id}"
  end
end


post '/answers/:id/vote' do
  if logged_in?
    vote = params[:vote_num].to_i
    @answer = Answer.find_by(id: params[:id])
    @vote = @answer.votes.create(voteable_type: params[:type], value: vote, user_id: session[:user_id])
    sum_votes(@answer.votes).to_s
    # binding.pry
  else
    redirect "/questions/#{@answer.question_id}"
  end
end
