post '/answers' do
  #get question ID associated with answer
 @answer = Answer.new()
  if @answer.save

    redirect "/questions/#{QUESTION ID NECESSARY}"
  else

  end
end
