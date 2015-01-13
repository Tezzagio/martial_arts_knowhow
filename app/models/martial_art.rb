class MartialArt < ActiveRecord::Base
  belongs_to :user
  belongs_to :comments

  validates :name, presence: true, uniqueness: true 
  validates :user_id, presence: true, uniqueness: true 

  scope :popular, -> { where('upvotes >= ?', 4)}
  scope :recent, -> { where('created_at >= ?', Date.today)}

  def self.search_for(query)
    where('title LIKE :query OR category LIKE :query', query: "%#{query}%")
  end
end


  
