require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  setup do
    @author = authors(:thomass)
  end
  test "the truth" do
    assert true
  end

  test "there are authors" do
    assert Author.count > 0
  end

  test "emails are unique" do
    not_thomas = Author.new(name: "Not Thomas", email: "Thomas@author.com")
    refute not_thomas.save
  end

  #def self.find_specific_email(address)
  #  where(email: address).all
  #end

  test "can find by email" do
    assert_equal @author, Author.find_specific_email("Thomas@author.com").first
  end
end
