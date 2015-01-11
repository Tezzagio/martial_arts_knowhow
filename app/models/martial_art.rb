class MartialArt < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  belongs_to :regional_origin

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true

  def self.search(search)
		self.where( "title LIKE ?", "%#{search}%" ).first
  end
	
end
