require 'bookmark'

describe Bookmark do
  it "returns a list of the bookmarks" do
    bookmark = Bookmark.new("https://google.com")
    expect(bookmark.link).to eq('https://google.com')
  end
end
