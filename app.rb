require "sinatra"
require "./lib/bookmark.rb"

class Bookmarks < Sinatra::Base

  get '/' do
    @bookmarks = Bookmark.all
    p "@bookmarks in get / route #{@bookmarks}"
    erb :bookmarks
  end

  post '/' do
    Bookmark.create(params[:url], params[:title])
    redirect '/'
  end

  post '/delete' do
    p " params[:delete] in /delete #{params[:delete]} "
    Bookmark.delete(params[:delete])
    redirect '/'
  end

  run! if app_file == $0

end
