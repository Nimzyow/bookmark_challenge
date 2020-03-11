# frozen_string_literal: true

require 'sinatra'
require_relative './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base
  get '/' do
    "Stephan the greats, Bookmark Manager"
  end

  get "/bookmarks/new" do
    erb :"bookmarks/new"
  end 

  post "/bookmarks" do
    Bookmark.create(url: params[:url])
    redirect '/bookmarks'
  end 

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end
  
  run! if app_file == $PROGRAM_NAME
end
