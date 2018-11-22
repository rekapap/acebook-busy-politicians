def sign_in_to_test()
  visit '/posts'
  click_link 'Sign In'
  fill_in "user[email]", with: "test@test.com"
  fill_in "user[password]", with: "12345678"
  click_button 'Log in'
end
