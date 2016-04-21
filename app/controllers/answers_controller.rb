post '/answers' do
  #get question ID associated with answer
 @answer = Answer.new(content: params[:answer][:content], user_id: params[:user_id], question_id: params[:question_id])
  if @answer.save
    redirect "/questions/#{params[:question_id]}"
  else

  end
end
