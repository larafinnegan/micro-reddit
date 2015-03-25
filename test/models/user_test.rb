require 'test_helper'

class UserTest < ActiveSupport::TestCase

def setup
	@user = User.new(name: "Example Person", email: "example@example.com", username: "example_username", password: "password1")
end

test "should be valid" do 
	assert @user.valid?
end

test "name should be present" do 
	@user.name = "     "
	assert_not @user.valid?
end

test "email should be present" do 
	@user.email = "     "
	assert_not @user.valid?
end

test "password should be present" do
	@user.password = "    "
	assert_not @user.valid?
end

test "username should be present" do 
	@user.username = "     "
	assert_not @user.valid?
end

test "username should not be too long" do 
	@user.username = "a" * 51
	assert_not @user.valid?
end

test "username should be unique" do 
	duplicate_user = @user.dup 
	duplicate_user.username.upcase!
	@user.save
	assert_not duplicate_user.valid?
end

test "password is long enough" do 
	@user.password = "a" * 4
	assert_not @user.valid?
end

end
