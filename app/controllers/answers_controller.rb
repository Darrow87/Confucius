post '/answers' do
  @answer = Answer.new(content: params[:answer][:content], user_id: params[:user_id], question_id: params[:question_id])
    @question = Question.find_by(id: params[:question_id])

  if @answer.save
    if request.xhr?
     erb :'/_answer', layout: false, locals: {answer: @answer, question_id: @question.id}
    else

      redirect "/questions/#{params[:question_id]}"
    end
  else
    @errors = @answer.errors.full_messages
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
