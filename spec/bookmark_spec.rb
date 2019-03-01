require 'bookmark'

describe Bookmark do

  let(:url) { "https://google.com" }
  let(:title) { "Google" }
  let(:id) {4}
  let(:bookmark) { Bookmark.new(url, title, id) }

  it "returns a link" do
    expect(bookmark.url).to eq(url)
  end

  it "returns a name" do
    expect(bookmark.title).to eq(title)
  end

  # it 'returns all instances of bookmark' do
  #   bookmarks = Bookmark.all
  #
  #   expect(bookmarks).to include("http://www.makersacademy.com")
  #   expect(bookmarks).to include("http://www.google.com")
  #   expect(bookmarks).to include("http://www.destroyallsoftware.com")
  # end

  # NEEDS DOUBLES

  it "creates a bookmark" do

  end

  it "deletes a bookmark" do

  end

  it "updates a bookmark" do
    Bookmark.update(2, 'https://www.twitter.com', 'Twitter')
    expect(Bookmark.all[1].url).to include('https://www.twitter.com')
    expect(Bookmark.all[1].title).to include('Twitter')
  end

end
