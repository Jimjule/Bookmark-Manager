feature 'Delete bookmarks' do
  scenario 'Should delete an existing bookmark' do

    visit('/')
    fill_in 'url', with: 'https://hackernews.com'
    fill_in 'title', with: 'Hackers'
    click_button 'Add Bookmark'
    select('Hackers', :from => :delete)
    click_button 'Delete Bookmark'
    expect(page).not_to have_link("Hackers", :href => "https://hackernews.com")
    expect(page).to have_link("Google", :href => "http://www.google.com")
  end
end
