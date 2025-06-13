# app.rb
require "rodakase"

class App < Rodakase::App
  route do |r|
    r.root do
      'Hello from Rodakase!'
    end
  end
end

App.run!

