require 'test_helper'

class UnauthorizedSurveyResultsInFlashing < ActionDispatch::IntegrationTest
  test "try to survey" do
    get new_survey_path
    assert_redirected_to sessions_log_in_path
  end
end
