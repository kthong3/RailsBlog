require 'rails_helper'

feature 'user registration' do
  scenario 'sign up with valid inputs' do 
    visit new_user_registration_path

    fill_in 'Name', with: 'Alphonse'
    fill_in 'Email', with: 'alphonse@email.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'

    expect(page).to have_current_path root_path
    expect(page).to have_content "Welcome! You have signed up successfully."
  end

  scenario 'sign up with invalid inputs' do
    visit new_user_registration_path

    fill_in 'Name', with: ''
    fill_in 'Email', with: 'alphonse@email.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'

    expect(page).to have_current_path users_path
    expect(page).to have_content "Name can't be blank"
  end

  scenario 'sign up with no input' do
    visit new_user_registration_path

    click_button 'Sign up'
    expect(page).to have_current_path users_path
    expect(page).to have_content "Name can't be blank"
    expect(page).to have_content "Email can't be blank"
    expect(page).to have_content "Password can't be blank"
  end
end