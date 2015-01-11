class MartialArt < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  belongs_to :regional_origin

  validates :name, presence: true, uniqueness: true, :upvotes, presence: true
  validates :description, presence: true
  scope :popular, -> { where('upvotes >= ?', 4)}
  scope :recent, -> { where('created_at >= ?', Date.today)}

  def self.search_for(query)
    where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
  end
end


  
