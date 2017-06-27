require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get developer" do
    get :developer
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get mypage" do
    get :mypage
    assert_response :success
  end

  test "should get register" do
    get :register
    assert_response :success
  end

  test "should get complete" do
    get :complete
    assert_response :success
  end

end
