require 'test_helper'

class BinariesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @binary = binaries(:one)
  end

  test "should get index" do
    get binaries_url
    assert_response :success
  end

  test "should get new" do
    get new_binary_url
    assert_response :success
  end

  test "should create binary" do
    assert_difference('Binary.count') do
      post binaries_url, params: { binary: { description: @binary.description, title: @binary.title } }
    end

    assert_redirected_to binary_url(Binary.last)
  end

  test "should show binary" do
    get binary_url(@binary)
    assert_response :success
  end

  test "should get edit" do
    get edit_binary_url(@binary)
    assert_response :success
  end

  test "should update binary" do
    patch binary_url(@binary), params: { binary: { description: @binary.description, title: @binary.title } }
    assert_redirected_to binary_url(@binary)
  end

  test "should destroy binary" do
    assert_difference('Binary.count', -1) do
      delete binary_url(@binary)
    end

    assert_redirected_to binaries_url
  end
end
