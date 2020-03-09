require "sinatra"

class Bookmark < Sinatra::Base

  run! if app_file == $0
end