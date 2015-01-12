class Comment < ActiveRecord::Base
	has_many :users
	has_many :user_comments, :through => :users

	belongs_to :martial_art
	belongs_to :users
end
