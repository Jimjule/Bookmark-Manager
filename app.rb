require 'sinatra'

class Bookmarks < Sinatra::Base

  get '/' do
    "Hello, world"
  end

  get '/bookmarks' do
    @bookmarks = []
    @bookmarks << Bookmark.create("https://google.com", "Google")
    @bookmarks << Bookmark.create("https://google.com", "Google")
    erb :bookmarks
  end

  run! if app_file == $0

end
