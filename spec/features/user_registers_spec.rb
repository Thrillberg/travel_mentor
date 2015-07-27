require 'spec_helper'

feature 'User registers', { js: true, vcr: true } do
  background do
    visit register_path
  end

  scenario "with valid user info" do
    fill_in_valid_user_info
    click_button "Register"
    expect(page).to have_content("Thank you for registering with Travel Mentor.")
  end

  scenario "with invalid user info" do
    fill_in_invalid_user_info
    click_button "Register"
    expect(page).to have_content("Please fill in all fields.")
  end

  def fill_in_valid_user_info
    fill_in "Email Address", with: "john@example.com"
    fill_in "Password", with: "password"
    fill_in "First Name", with: "John"
    fill_in "Last Name", with: "Doe"
  end

  def fill_in_invalid_user_info
    fill_in "Email Address", with: "john@example.com"
  end
end