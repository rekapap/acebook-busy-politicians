require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Can sign up" do
    visit "/users/new"
    fill_in "username_textbox", with: "username123"
    fill_in "password_textbox", with: "pword123"
    fill_in "email_textbox", with: "user@user.com"
    click_button "Sign Up"
    expect(page).to have_content("Logged in as username123")
  end
end
