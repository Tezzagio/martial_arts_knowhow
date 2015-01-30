class Blog < ActiveRecord::Base

	belongs_to :user
  	belongs_to :category

	#validates :title, presence: true, uniqueness: true
	#validates :description, presence: true
	#validates :user_id, presence: true, uniqueness: true
	#validates :category_id, presence: true, uniqueness: true
end
