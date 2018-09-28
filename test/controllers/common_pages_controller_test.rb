require 'test_helper'

class CommonPagesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @base_title = "Mapworks"
  end
  
  test "should get root" do
    get common_pages_home_url
    assert_response :success
  end
  
  test "should get home" do
    get common_pages_home_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get help" do
    get common_pages_help_url
    assert_response :success
    assert_select "title", "Help | #{@base_title}"
  end
  
  test "should get about" do
    get common_pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end
  
  test "should get contact" do 
    get common_pages_contact_url
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
