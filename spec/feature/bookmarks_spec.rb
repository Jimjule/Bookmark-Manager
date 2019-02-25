feature 'View bookmarks' do
  scenario 'Should display all bookmarks in list' do
    visit('/bookmarks')

    bookmarks = page.find_all('.bookmark')

    expect(bookmarks.length).to eq(2)
  end
end
