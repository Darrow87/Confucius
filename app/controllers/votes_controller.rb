post '/questions/:id/vote' do
    vote = params[:vote_num].to_i
    @question = Question.find_by(id: params[:id])
    @vote = @question.votes.create(voteable_type: params[:type], value: vote, user_id: session[:user_id])
    if request.xhr?
      binding.pry
    else
      redirect "/questions/#{@question.id}"
    end
end


post '/answers/:id/vote' do
  vote = params[:vote_num].to_i
  @answer = Answer.find_by(id: params[:id])
  @vote = @answer.votes.create(voteable_type: params[:type], value: vote, user_id: session[:user_id])
  redirect "/questions/#{@answer.question_id}"
end
