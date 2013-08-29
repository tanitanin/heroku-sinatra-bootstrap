require "sinatra"
require "haml"

get "/" do
  haml :index
end

get "/style.css" do
  content_type 'text/css', :charset => 'utf-8'
  scss :style
end

get "/script.js" do
  coffee :script
end
