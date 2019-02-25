
feature 'View bookmarks' do
  scenario 'Should display bookmarks when user visits bookmarks page' do
    visit('/bookmarks')

    bookmark = page.find('.bookmark')

    expect(bookmark[:href]).to eq('https://somelink.com')
  end
end
