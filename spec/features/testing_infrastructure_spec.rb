feature "testing" do
  scenario "page displays Bookmark manager" do
    visit("/")
    expect(page).to have_content("Bookmark Manager")
  end
end