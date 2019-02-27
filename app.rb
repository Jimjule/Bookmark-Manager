require "sinatra"
require "./lib/bookmark.rb"

class Bookmarks < Sinatra::Base

  get '/' do
    "Hello, world"
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0

end
