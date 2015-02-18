require 'test_helper'

class AuthorsControllerTest < ActionController::TestCase

  test "should create author" do
    assert_difference('Author.count') do
      post :create, author: {  name: "mason", email: "mason@author.com", password:"IloveCats"}
    end
  end
end
