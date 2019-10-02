require 'test_helper'

class WaitnessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @waitness = waitnesses(:one)
  end

  test "should get index" do
    get waitnesses_url
    assert_response :success
  end

  test "should get new" do
    get new_waitness_url
    assert_response :success
  end

  test "should create waitness" do
    assert_difference('Waitness.count') do
      post waitnesses_url, params: { waitness: { cin: @waitness.cin, content: @waitness.content, first_name: @waitness.first_name, last_name: @waitness.last_name, telephone: @waitness.telephone } }
    end

    assert_redirected_to waitness_url(Waitness.last)
  end

  test "should show waitness" do
    get waitness_url(@waitness)
    assert_response :success
  end

  test "should get edit" do
    get edit_waitness_url(@waitness)
    assert_response :success
  end

  test "should update waitness" do
    patch waitness_url(@waitness), params: { waitness: { cin: @waitness.cin, content: @waitness.content, first_name: @waitness.first_name, last_name: @waitness.last_name, telephone: @waitness.telephone } }
    assert_redirected_to waitness_url(@waitness)
  end

  test "should destroy waitness" do
    assert_difference('Waitness.count', -1) do
      delete waitness_url(@waitness)
    end

    assert_redirected_to waitnesses_url
  end
end
