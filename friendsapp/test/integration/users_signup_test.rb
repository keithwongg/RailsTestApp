require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup information" do
  get signup_path
    # Assert no difference is the same as doing User.count and assert_equals before and after the count to check if User has been added to the db
    assert_no_difference 'User.count' do
      post users_path, params: { user: { 
        name: "",
        email: "user@invalid",
        password: "foo",
        password_confirmation: "bar" } }
      end
    assert_template 'users/new'
  end
end
