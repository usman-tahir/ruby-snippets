
require "sinatra"

Choices = {
  "HAM" => "Hamburger",
  "PIZ" => "Pizza",
  "CUR" => "Curry",
  "NOO" => "Noodles"
}

get "/" do
  @title = "Welcome to the Voting App"
  erb :index
end

# Casting a vote
post "/cast" do
  @title = "Thank you for casting your vote!"
  @vote = params["vote"]
  erb :cast
end
