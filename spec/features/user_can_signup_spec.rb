require 'rails_helper'
require_relative '../web_helpers.rb'

RSpec.feature 'Timeline', type: :feature do
  scenario 'Can sign up' do
    visit_site_sign_up
    expect(page).to have_content("Log Out from user@user.com")
  end
end
