require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase

  test "should create author" do
    assert_difference('Author.count') do
      post :create, author: {  name: "mason", email: "mason@author.com", password:"IloveCats"}
    end
    assert_redirected_to sessions_log_in_path
  end

  test "should get new" do
    get :new
    assert_response :success
    assert_template "new"
  end

end
