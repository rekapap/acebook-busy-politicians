require 'rails_helper'
require 'test_helper'
require_relative '../web_helpers.rb'

RSpec.feature "Timeline", type: :feature do
  scenario "Can submit posts and view them" do
    visit_site_sign_up
    hello_world_post
    expect(page).to have_content("Hello, world!")
  end

  scenario "Posts can contain new lines" do
    sign_in_to_test()
    click_link 'New post'
    fill_in 'post_message', with: "hi \n hello"
    click_button 'Submit'
    expect(page).to have_content("hi \n hello")
  end
end
