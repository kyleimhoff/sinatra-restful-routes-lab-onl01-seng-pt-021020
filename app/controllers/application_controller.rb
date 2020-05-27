class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!
  get '/recipes/new' do 
    erb :new
  end 
  
  post '/recipes' do 
    @recipe = Recipes.create(params)
    redirect '/recipies/#{params'
  end 
end
