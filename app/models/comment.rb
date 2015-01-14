class Comment < ActiveRecord::Base
	

	belongs_to :martial_art
	belongs_to :user
end
