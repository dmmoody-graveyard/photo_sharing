require 'rails_helper'

describe 'the create a new user process' do
  it 'creates a new user' do
    visit new_user_path
    fill_in "Email", :with => "dmmoody@gmail.com"
    fill_in "Password", :with => "badpassword123"
    fill_in "Password confirmation", :with => "badpassword123"
    click_on "Sign Up"
    expect(page).to have_content "Welcome to the site!"
  end

  it 'logs in a user' do
    User.create(email: "englishhound@yahoo.com", password: 123, password_confirmation: 123)
    visit '/log-in'
    fill_in "Email", :with => "englishhound@yahoo.com"
    fill_in "Password", :with => "123"
    click_on "Log In"
    expect(page).to have_content "logged in."
  end

  it 'logs out a user' do
    User.create(email: "englishhound@yahoo.com", password: 123, password_confirmation: 123)
    User.authenticate("englishhound@yahoo.com", 123)
    visit '/log-out'
    expect(page).to have_content "logged out"
  end
end
