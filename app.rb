require "sinatra"
require "./lib/bookmark.rb"

class Bookmarks < Sinatra::Base

  get '/' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  post '/' do
    Bookmark.create(params[:url], params[:title])
    redirect '/'
  end

  post '/delete' do
    p params[:id]
    Bookmark.delete(params[:id])
    redirect '/'
  end

  run! if app_file == $0

end
