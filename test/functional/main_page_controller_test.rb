require 'test_helper'

class MainPageControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get not_found" do
    get :not_found
    assert_response :success
  end

end
