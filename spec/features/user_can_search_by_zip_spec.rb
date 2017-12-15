require 'rails_helper'

feature "User can search by zip" do
  scenario "and get to page /search with visible params" do
    visit '/'
    page.fill_in 'search-field' with: 80203
    click_on 'Locate'

    expect(current_page).to be '/search?zip=80203'
  end
  scenario "and should see a list of the 10 closest stations within 6 miles sorted by distance" do

  end
  scenario "and the stations should be limited to Electric and Propane" do

  end
  scenario "and for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times" do

  end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times