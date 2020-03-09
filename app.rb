# frozen_string_literal: true

require 'sinatra'
require_relative './lib/bookmark.rb'

class Bm < Sinatra::Base
  get '/' do
    erb(:index)
  end

  run! if app_file == $PROGRAM_NAME
end
