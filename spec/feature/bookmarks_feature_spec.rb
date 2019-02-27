feature 'View bookmarks' do
  scenario 'Should display all bookmarks in a list' do
    visit('/')
    expect(page).to have_content("http://www.makersacademy.com")
  end
end
