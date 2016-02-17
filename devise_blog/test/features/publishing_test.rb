require "test_helper"

class PublishingTest < Capybara::Rails::TestCase
  test "cannot publish a post if not logged in" do
    visit posts_path

    #assert_css page, '.posts_table tbody tr', count: 0

    click_link 'New Post'

    assert_equal new_user_session_path, current_path

=begin
    within '#new_post' do
      fill_in 'Title', with: 'My Article'
      fill_in 'Body', with: 'My awesome new article on Devise'

      click_button 'Create Post'
    end

    visit posts_path

    assert_css page, '.posts_table tbody tr', count: 1

    within '.posts_table tbody tr:first' do
      assert_content page, 'My Article'
      assert_content page, 'My awesome new article on Devise'
    end
=end
  end
  
  test "puede publicar si esta registrado" do
    visit posts_path
    user= User.create email:'as@as.com', password: '12345678'
    assert_css page, '.posts_table tbody tr', count:0
    click_link 'New Post'
    assert_equal new_user_session_path, current_path
    within '#new_user' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with:user.password
            click_button 'Log in'
    end
    assert_equal new_post_path, current_path
    
    within '#new_post' do
      #save_and_open_page para revisar donde está el error
      fill_in 'Title', with: 'My Article'
      fill_in 'Body', with: 'My awesome new article on Devise'
    click_button 'Create Post'
    end
    visit posts_path
    assert_css page, '.posts_table tbody tr', count:1
    within '.posts_table tbody tr:first' do
      assert_content page, 'My Article'
      assert_content page, 'My awesome new article on Devise'
    end
  end
end
