require "sinatra"
require "./lib/bookmark.rb"

class Bookmarks < Sinatra::Base

  get '/' do
    "Hello, world"
  end

  get '/bookmarks' do
    @current_bookmarks = Bookmark.create("https://google.com", "Google")
    @bookmarks = @current_bookmarks.all
    erb :bookmarks
  end

  run! if app_file == $0

end
