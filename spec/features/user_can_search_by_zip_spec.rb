require 'rails_helper'

feature "User can search by zip" do
  scenario "and get to page /search with visible params" do
    visit '/'
    page.fill_in 'location', with: 80203
    click_on 'Locate'
    
    expect(current_path).to eq '/search?location=80203'
  end
  scenario "and should see a list of the 10 closest stations within 6 miles sorted by distance" do
    #nope
  end
  scenario "and the stations should be limited to Electric and Propane" do
    #nope
  end
  scenario "and for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times" do
    #passing manual test
  end
end