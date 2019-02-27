require "pg"

class Bookmark
  attr_reader :link, :name, :bookmarks

  def self.all
    @bookmarks = []

    if ENV['ENVIRONMENT'] == 'test'
      marks = PG.connect( dbname: 'bookmark_manager_test')
    else
      marks = PG.connect( dbname: 'bookmark_manager')
    end
    marks.exec("SELECT * FROM bookmarks;").each do | bookmark |
      @bookmarks << bookmark["url"]
    end
    @bookmarks
  end

  def self.create(link)
    if ENV['ENVIRONMENT'] == 'test'
      marks = PG.connect( dbname: 'bookmark_manager_test')
    else
      marks = PG.connect( dbname: 'bookmark_manager')
    end
    marks.exec("INSERT INTO bookmarks (url) VALUES ('#{link}');")
  end

  def initialize(link, name)
    @link = link
    @name = name
  end
end
