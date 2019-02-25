class Bookmark
  @bookmarks = []
  attr_reader :link, :name

  def self.all
    @bookmarks
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
