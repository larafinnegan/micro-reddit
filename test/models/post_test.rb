require 'test_helper'

class PostTest < ActiveSupport::TestCase
  
  def setup
	@post = Post.new(title: "Title", body: "Body", user_id: 1)
end

test "title should not be blank" do 
	@post.title = "     "
	assert_not @post.valid?
end

test "body should not be blank" do 
	@post.body = "    "
	assert_not @post.valid?
end

test "user id should be present" do 
	@post.user_id = nil
	assert_not @post.valid?
end
end
