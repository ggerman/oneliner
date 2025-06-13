# app.rb
require 'sinatra'

set :bind, '0.0.0.0'  # Allows external access
set :port, 4567       # Optional but explicit

get '/' do
  "Hello from Sinatra in Docker!"
end

