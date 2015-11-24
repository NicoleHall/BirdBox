require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
  test "registered user can login" do
    nicole = User.create(username: "NicoleHall", password: "password")

    visit login_path
    fill_in "Username", with: nicole.username
    fill_in "Password", with: "password"
    click_button "Login"
    assert page.has_content?("Hello NicoleHall")
    #assert_equal user_path(nicole.id) current_path
  end
end
