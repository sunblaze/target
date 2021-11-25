require "test_helper"

module Deprecated
  class UserTest < ActiveSupport::TestCase
    test "creates a new user" do
      User.create!(name: "test")

      user = User.find_by(name: "test")

      assert_equal "test", user.name
    end
  end
end
