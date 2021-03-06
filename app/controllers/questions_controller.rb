get '/questions' do
  @questions = Question.all
  erb :'questions/index'
end

get '/questions/new' do
  erb :'questions/new'
end

post '/questions' do

  @question = Question.new(params[:question])
  @tag = Tag.find_or_create_by(params[:tag])
  if @question.save
    @question.tags << @tag
    redirect "/questions/#{@question.id}"
  else
    @errors = @question.errors.full_messages
    erb :'questions/new'
  end
end

get '/questions/:id' do
  @question = Question.find_by(id: params[:id])
  @comments = @question.comments
  votes = @question.votes
  @question_vote_count = sum_votes(votes)
  # answer_votes = @answer.votes
  # @answer_vote_count = sum_votes(answer_votes)
  # binding.pry
  erb :'questions/show'
end
