require 'sinatra/reloader'
require './idea'

class IdeaBoxApp < Sinatra::Base
<<<<<<< HEAD
	configure :development do 
=======
  configure :development do 
>>>>>>> b436896218ebb06ad4e9e2c0d2b0857014fc0cda
		register Sinatra::Reloader
	end

  not_found do
    erb :error
  end

  get '/' do
     erb :index, locals: {ideas: Idea.all}
  end

  post '/' do
  	idea = Idea.new(params['idea_title'], params['idea_description'])
  	idea.save
  	redirect '/'
  end

<<<<<<< HEAD
end
=======
end
>>>>>>> b436896218ebb06ad4e9e2c0d2b0857014fc0cda
