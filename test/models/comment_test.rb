require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  
  def setup
  	@comment = Comment.new(body: "Body", user_id: 1, post_id: 1)
end

test "body cannot be blank" do 
	@comment.body = "    "
	assert_not @comment.valid?
end

test "user id cannot be blank" do 
	@comment.user_id = nil
	assert_not @comment.valid?
end

test "post_id" do 
	@comment.post_id = nil
	assert_not @comment.valid?
end
end
