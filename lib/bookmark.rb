require "pg"

class Bookmark
  @bookmarks = []
  attr_reader :link, :name

  def self.all
    marks = PG.connect :dbname => 'bookmark_manager'
    all_bookmarks = marks.exec("SELECT * FROM bookmarks;")
    all_bookmarks.map { | bookmark | bookmark['url'] }
  end

  def self.create(link, name)
    bookmark = Bookmark.new(link, name)
    @bookmarks << bookmark
    bookmark
  end

  def initialize(link, name)
    @link = link
    @name = name
  end
end
