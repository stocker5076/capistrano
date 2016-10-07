require 'test_helper'

class GeneratesControllerTest < ActionDispatch::IntegrationTest
  test "should get x" do
    get generates_x_url
    assert_response :success
  end

  test "should get y" do
    get generates_y_url
    assert_response :success
  end

  test "should get z" do
    get generates_z_url
    assert_response :success
  end

end
