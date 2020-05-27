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
    @recipe = Recipe.create(params)
    redirect "/recipies/#{@recipe.id}"
  end
  
  get '/recipes'
  @recipes = Recipe.all
  erb :index 
  end 
  
  get '/recipes/:id' do 
    @recipe = Recipe.find_by_id(params[:id])
    erb :show 
  end 
  
  
end
