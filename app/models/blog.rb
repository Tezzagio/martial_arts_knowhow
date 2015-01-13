class Blog < ActiveRecord::Base

	#validates :title, presence: true, uniqueness: true
	#validates :description, presence: true
	validates :user_id, presence: true, uniqueness: true
	validates :category_id, presence: true, uniqueness: true

	def self.search(search)
		self.where("name LIKE ?", "%#{@search}%").first
	end
end

  belongs_to :user
  belongs_to :category

end
