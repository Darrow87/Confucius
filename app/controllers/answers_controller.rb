post '/answers' do
  #get question ID associated with answer
 @answer = Answer.new(content: params[:answer][:content], user_id: params[:user_id], question_id: params[:question_id])
  if @answer.save
    redirect "/questions/#{params[:question_id]}"
  else
    @errors = @answer.errors.full_messages
    @question = Question.find_by(id: params[:question_id])
    erb :'/questions/show'
  end
end

post '/answers/:id/best' do
  @answer = Answer.find_by(id: params[:id])
  @answer.best_answer = true
  if @answer.save
    redirect "/questions/#{@answer.question_id}"
  end
end
