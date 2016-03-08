require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get admin" do
    get :admin
    assert_response :success
  end

  test "should get normal" do
    get :normal
    assert_response :success
  end

  test "should get welcome" do
    get :welcome
    assert_response :success
  end

end
