require 'test_helper'

class CulpritsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @culprit = culprits(:one)
  end

  test "should get index" do
    get culprits_url
    assert_response :success
  end

  test "should get new" do
    get new_culprit_url
    assert_response :success
  end

  test "should create culprit" do
    assert_difference('Culprit.count') do
      post culprits_url, params: { culprit: { charged_for: @culprit.charged_for, cin: @culprit.cin, content: @culprit.content, date_of_birth: @culprit.date_of_birth, first_name: @culprit.first_name, last_name: @culprit.last_name, status: @culprit.status } }
    end

    assert_redirected_to culprit_url(Culprit.last)
  end

  test "should show culprit" do
    get culprit_url(@culprit)
    assert_response :success
  end

  test "should get edit" do
    get edit_culprit_url(@culprit)
    assert_response :success
  end

  test "should update culprit" do
    patch culprit_url(@culprit), params: { culprit: { charged_for: @culprit.charged_for, cin: @culprit.cin, content: @culprit.content, date_of_birth: @culprit.date_of_birth, first_name: @culprit.first_name, last_name: @culprit.last_name, status: @culprit.status } }
    assert_redirected_to culprit_url(@culprit)
  end

  test "should destroy culprit" do
    assert_difference('Culprit.count', -1) do
      delete culprit_url(@culprit)
    end

    assert_redirected_to culprits_url
  end
end
