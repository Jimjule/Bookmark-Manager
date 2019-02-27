feature 'Add bookmarks' do
  scenario 'Should add a new bookmark' do

    visit('/')
    fill_in 'url', with: 'https://hackernews.com'
    click_button 'Add Bookmark'
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("https://hackernews.com")
  end
end
