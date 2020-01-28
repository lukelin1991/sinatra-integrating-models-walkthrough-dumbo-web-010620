require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  
  get '/' do #when you go to localhost:9393/ <-- slash. OUTPUT index.erb
    erb :index
  end

  post '/' do
    @analyzed_text = TextAnalyzer.new(params[:user_text])
   
    erb :results
  end
end