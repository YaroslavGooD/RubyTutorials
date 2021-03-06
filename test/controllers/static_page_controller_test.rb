require 'test_helper'

class StaticPageControllerTest < ActionDispatch::IntegrationTest
  
  test "should get root" do
    get root_url
    assert_response :success 
  end
  
  test "should get home" do
    get static_page_home_url
    assert_response :success
    assert_select "title", "Ruby on Rails"
  end

  test "should get help" do
    get static_page_help_url
    assert_response :success
    assert_select "title", "Help | Ruby on Rails"
  end

  test "should get about" do
    get static_page_about_url
    assert_response :success
    assert_select "title", "About | Ruby on Rails"
  end

  test "shoul get contact" do
    get static_page_contact_url
    assert_response :success
    assert_select "title", "Contact | Ruby on Rails"
  end

end
