require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "creates a new user" do
    User.create!(email: "test@example.com")

    user = User.find_by(email: "test@example.com")
    
    assert_equal "test@example.com", user.email
  end
end
