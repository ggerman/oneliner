# app.rb
require "grape"

class MyAPI < Grape::API
  format :json

  get "/" do
    { hello: "world" }
  end
end
