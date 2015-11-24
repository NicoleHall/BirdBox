require 'test_helper'

class UserLogoutTest < ActionDispatch::IntegrationTest
  test "logged in user can logout" do
    nicole = User.create(username: "NicoleHall", password: "password")

    visit login_path
    fill_in "Username", with: nicole.username
    fill_in "Password", with: "password"
    click_button "Login"

    assert page.has_content?("Hello NicoleHall")

    click_link "Logout"
    refute page.has_content?("Hello NicoleHall")

  end
end
