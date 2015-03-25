class User < ActiveRecord::Base

	has_many :posts
	has_many :comments

	validates :name, presence: true
	validates :email, presence: true
	validates :username, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
	validates :password, presence: true, length: { minimum: 6 }
end
