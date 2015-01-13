class Blog < ActiveRecord::Base

	#validates :title, presence: true, uniqueness: true
	#validates :description, presence: true
	validates :user_id, presence: true, uniqueness: true
	validates :category_id, presence: true, uniqueness: true


  belongs_to :user
end
