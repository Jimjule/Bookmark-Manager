require "sinatra"
require "./lib/bookmark.rb"

class Bookmarks < Sinatra::Base

  get '/' do
    @bookmarks = Bookmark.all
    "@bookmarks in get / route #{@bookmarks}"
    erb :bookmarks
  end

  post '/' do
    Bookmark.create(params[:url], params[:title])
    redirect '/'
  end

  post '/delete' do
    " params[:delete] in /delete #{params[:delete]} "
    Bookmark.delete(params[:delete])
    redirect '/'
  end

  post '/update' do
    " params[:update] in /update #{params[:update]} "
    Bookmark.update(params[:update], params[:title_update], params[:url_update])
    redirect '/'
  end

  run! if app_file == $0

end
