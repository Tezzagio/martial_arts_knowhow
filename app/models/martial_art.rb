class MartialArt < ActiveRecord::Base
  has_many :users
  has_many :comments, :through => :users


  validates :name, presence: true, uniqueness: true 
  validates :description, presence: true
  validates :image, presence: true

  #scope :popular, -> { where('upvotes >= ?', 4)}
  #scope :recent, -> { where('created_at >= ?', Date.today)}

  def self.search_for(query)
    where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
  end
end


  
