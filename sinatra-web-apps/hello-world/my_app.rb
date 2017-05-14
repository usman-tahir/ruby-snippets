
require "sinatra"

class HelloWorldApp < Sinatra::Base
  # Simplification of routes
  get '/?:name?' do
  	"Hello, #{params[:name] ? params[:name] : 'world'}!"
  end

  # Specifying an optional greeting
  get '/:greeting/?:name?' do
  	"#{params[:greeting]}, #{params[:name] ? params[:name] : 'world'}!"
  end
end
