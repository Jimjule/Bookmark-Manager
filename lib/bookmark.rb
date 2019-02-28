require "pg"

class Bookmark
  attr_reader :url, :title, :id, :bookmarks

  def self.all
    @bookmarks = Array.new

    if ENV['ENVIRONMENT'] == 'test'
      marks = PG.connect( dbname: 'bookmark_manager_test')
    else
      marks = PG.connect( dbname: 'bookmark_manager')
    end
    marks.exec("SELECT * FROM bookmarks;").each do | bookmark |
      @bookmarks << Bookmark.new(bookmark["url"], bookmark["title"], bookmark["id"])
    end
    @bookmarks
  end

  def self.create(link, title)
    if ENV['ENVIRONMENT'] == 'test'
      marks = PG.connect( dbname: 'bookmark_manager_test')
    else
      marks = PG.connect( dbname: 'bookmark_manager')
    end
    marks.exec("INSERT INTO bookmarks (url, title) VALUES ('#{link}', '#{title}');")
  end

  def self.delete(id)
    if ENV['ENVIRONMENT'] == 'test'
      marks = PG.connect( dbname: 'bookmark_manager_test')
    else
      marks = PG.connect( dbname: 'bookmark_manager')
    end
    marks.exec("DELETE FROM bookmarks WHERE id = #{id};")

  end

  def initialize(url, title, id)
    @url = url
    @title = title
    @id = id
  end
end
