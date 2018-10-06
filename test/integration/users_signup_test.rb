require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: {user: { name: "", email: "ham@burger", password: "ham", password_confirmation: "burger" }}
    end
    assert_template 'users/new'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: {user: { name: "Hamburger day", email: "ham@burger.com", password: "hamburger", password_confirmation: "hamburger" }}
    end
    follow_redirect!
    assert_template 'users/show'
  end
end
