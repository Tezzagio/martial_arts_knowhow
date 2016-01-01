class MartialArt < ActiveRecord::Base
  
  validates :name, presence: true, uniqueness: true 
  validates :description, presence: true
 
  has_many :users
  has_many :comments, :through => :users

  #scope :popular, -> { where('upvotes >= ?', 4)}
  #scope :recent, -> { where('created_at >= ?', Date.today)}

  def self.search(search)
    self.where("name LIKE ?", "%#{@search}%").first
  end
end




  
