require 'test_helper'

class GovernoratesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @governorate = governorates(:one)
  end

  test "should get index" do
    get governorates_url
    assert_response :success
  end

  test "should get new" do
    get new_governorate_url
    assert_response :success
  end

  test "should create governorate" do
    assert_difference('Governorate.count') do
      post governorates_url, params: { governorate: { name: @governorate.name, population: @governorate.population, zone: @governorate.zone } }
    end

    assert_redirected_to governorate_url(Governorate.last)
  end

  test "should show governorate" do
    get governorate_url(@governorate)
    assert_response :success
  end

  test "should get edit" do
    get edit_governorate_url(@governorate)
    assert_response :success
  end

  test "should update governorate" do
    patch governorate_url(@governorate), params: { governorate: { name: @governorate.name, population: @governorate.population, zone: @governorate.zone } }
    assert_redirected_to governorate_url(@governorate)
  end

  test "should destroy governorate" do
    assert_difference('Governorate.count', -1) do
      delete governorate_url(@governorate)
    end

    assert_redirected_to governorates_url
  end
end
