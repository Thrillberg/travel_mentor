require 'spec_helper'

feature "User edits profile" do
  scenario "user adds activity interests and cities" do
    alice = Fabricate(:user)
    city = Fabricate(:city)
    interest = Fabricate(:interest)

    sign_in(alice)

    add_city_and_interest_to_queue(city, interest)

    visit user_path(alice)
    expect_city_and_interest_to_be_in_profile(city, interest)
  end

  def add_city_and_interest_to_queue(city, interest)
    visit home_path
    click_link "Profile"
    check city.name
    check interest.name
    click_button "Update Your Profile"
  end

  def expect_city_and_interest_to_be_in_profile(city, interest)
    page.should have_content(city.name)
    page.should have_content(interest.name)
  end
end