require 'test_helper'

class RefreshesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
