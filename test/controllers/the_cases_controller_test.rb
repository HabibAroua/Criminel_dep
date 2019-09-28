require 'test_helper'

class TheCasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @the_case = the_cases(:one)
  end

  test "should get index" do
    get the_cases_url
    assert_response :success
  end

  test "should get new" do
    get new_the_case_url
    assert_response :success
  end

  test "should create the_case" do
    assert_difference('TheCase.count') do
      post the_cases_url, params: { the_case: { address: @the_case.address, complainant_cin: @the_case.complainant_cin, complainant_first_name: @the_case.complainant_first_name, complainant_last_name: @the_case.complainant_last_name, complainant_telephone: @the_case.complainant_telephone, location: @the_case.location, titile: @the_case.titile, type: @the_case.type } }
    end

    assert_redirected_to the_case_url(TheCase.last)
  end

  test "should show the_case" do
    get the_case_url(@the_case)
    assert_response :success
  end

  test "should get edit" do
    get edit_the_case_url(@the_case)
    assert_response :success
  end

  test "should update the_case" do
    patch the_case_url(@the_case), params: { the_case: { address: @the_case.address, complainant_cin: @the_case.complainant_cin, complainant_first_name: @the_case.complainant_first_name, complainant_last_name: @the_case.complainant_last_name, complainant_telephone: @the_case.complainant_telephone, location: @the_case.location, titile: @the_case.titile, type: @the_case.type } }
    assert_redirected_to the_case_url(@the_case)
  end

  test "should destroy the_case" do
    assert_difference('TheCase.count', -1) do
      delete the_case_url(@the_case)
    end

    assert_redirected_to the_cases_url
  end
end
