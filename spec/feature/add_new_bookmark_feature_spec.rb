feature 'Add bookmarks' do
  scenario 'Should add a new bookmark' do

    visit('/')
    fill_in 'url', with: 'https://hackernews.com'
    fill_in 'title', with: 'Hackers'
    click_button 'Add Bookmark'
    expect(page).to have_link("Hackers", :href => "https://hackernews.com")
    expect(page).to have_link("Google", :href => "http://www.google.com")
  end
end
