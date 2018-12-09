require 'test_helper'

class ExamsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get exams_home_url
    assert_response :success
  end

  test "should get question" do
    get exams_question_url
    assert_response :success
  end

  test "should get result" do
    get exams_result_url
    assert_response :success
  end

end
