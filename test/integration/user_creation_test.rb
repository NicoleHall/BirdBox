require 'test_helper'

class UserCreationTest < ActionDispatch::IntegrationTest

  test "a user can be created" do
    visit new_user_path
    fill_in "Username", with: "NicoleHall"
    fill_in "Password", with: "password"
    click_button "Create Account"

    assert page.has_content?("Hello NicoleHall")
  end

end
