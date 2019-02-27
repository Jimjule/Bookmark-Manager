feature 'View bookmarks' do
  scenario 'Should display all bookmarks in a list' do
    visit('/')
    expect(page).to have_link("Google", :href => "http://www.google.com")
  end
end
