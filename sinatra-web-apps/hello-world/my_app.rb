
require "sinatra"

class HelloWorldApp < Sinatra::Base
    get '/' do
        "Hello World!"
    end

    get '/:name' do
        "Hello, #{params[:name]}!"
    end
end
