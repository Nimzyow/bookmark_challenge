# frozen_string_literal: true

require 'sinatra'
require_relative './lib/bookmark.rb'

class BookmarkManager < Sinatra::Base

  enable :sessions, :method_override

  get '/' do
    "Stephan the greats, Bookmark Manager"
  end

  get "/bookmarks/new" do
    erb :"bookmarks/new"
  end 

  post "/bookmarks" do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end 

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :'bookmarks/index'
  end

  delete "/bookmarks/:id" do
    #easy to delete specific bookmark of specific user.
    Bookmark.delete(id: params[:id])
    redirect("/bookmarks")
  end

  get "/bookmarks/:id/edit" do
    @bookmark_id = params[:id]
    erb :"bookmarks/edit"
  end

  patch "/bookmarks/:id" do
    connection = PG.connect(dbname: "bookmark_manager_test")
    connection.exec("UPDATE bookmarks SET url = '#{params[:url]}', title = '#{params[:title]}' WHERE id = '#{params[:id]}'")
    redirect("/bookmarks")
  end
  
  run! if app_file == $PROGRAM_NAME
end
