require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmark.create(url: "http://www.makersacademy.com", title: 'makers academy')
    Bookmark.create(url: "http://www.destroyallsoftware.com", title: 'destroy all software')
    Bookmark.create(url: "http://www.google.com", title: 'google')

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
