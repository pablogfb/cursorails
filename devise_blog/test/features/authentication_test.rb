require "test_helper"

class AuthenticationTest < Capybara::Rails::TestCase
  test "A registered user can log in" do
    user= User.create email: 'example@example.com', password:'12345678'
    visit root_path
    assert_content page, 'Log In'
    click_link 'Log In'
    within '#new_user' do
      fill_in 'Email', with:user.email
      fill_in 'Password', with:user.password
      click_button 'Log in'
    end
    assert_content page, 'Log Out'
  end
end
