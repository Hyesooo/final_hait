require 'test_helper'

class HaitControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get mypage" do
    get :mypage
    assert_response :success
  end

end
