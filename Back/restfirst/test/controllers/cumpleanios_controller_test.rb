require 'test_helper'

class CumpleaniosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cumpleanio = cumpleanios(:one)
  end

  test "should get index" do
    get cumpleanios_url
    assert_response :success
  end

  test "should get new" do
    get new_cumpleanio_url
    assert_response :success
  end

  test "should create cumpleanio" do
    assert_difference('Cumpleanio.count') do
      post cumpleanios_url, params: { cumpleanio: { fecha: @cumpleanio.fecha } }
    end

    assert_redirected_to cumpleanio_url(Cumpleanio.last)
  end

  test "should show cumpleanio" do
    get cumpleanio_url(@cumpleanio)
    assert_response :success
  end

  test "should get edit" do
    get edit_cumpleanio_url(@cumpleanio)
    assert_response :success
  end

  test "should update cumpleanio" do
    patch cumpleanio_url(@cumpleanio), params: { cumpleanio: { fecha: @cumpleanio.fecha } }
    assert_redirected_to cumpleanio_url(@cumpleanio)
  end

  test "should destroy cumpleanio" do
    assert_difference('Cumpleanio.count', -1) do
      delete cumpleanio_url(@cumpleanio)
    end

    assert_redirected_to cumpleanios_url
  end
end
