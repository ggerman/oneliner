require "cuba"
Cuba.define do
  on root do
    res.write "Hello from Cuba!"
  end
end

run Cuba
