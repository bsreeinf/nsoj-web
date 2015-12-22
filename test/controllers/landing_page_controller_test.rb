require 'test_helper'

class LandingPageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get why_us" do
    get :why_us
    assert_response :success
  end

  test "should get program" do
    get :program
    assert_response :success
  end

  test "should get admission" do
    get :admission
    assert_response :success
  end

end
