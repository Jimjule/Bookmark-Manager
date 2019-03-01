feature 'Update bookmarks' do
  scenario 'Should update an existing bookmark' do
    visit('/')
    select('Hackers', :from => :update)
    fill_in 'url_update', with: 'https://twitter.com'
    fill_in 'title_update', with: 'Twitter'
    click_button 'Update'
    expect(page).not_to have_link("Hackers", :href => "https://hackernews.com")
    expect(page).to have_link("Twitter", :href => "http://www.twitter.com")
  end
end
