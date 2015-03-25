class Post < ActiveRecord::Base

	belongs_to :user
	has_many :comments

	validates :title, presence: true
	validates :body, presence: true
	validates :user_id, presence: true
end
