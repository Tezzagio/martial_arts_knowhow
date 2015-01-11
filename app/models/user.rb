class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


	has_many :martial_arts
	has_many :comments, :through => :martial_arts

  has_many :user_comments
  has_many :comments, through: :user_comments

  belongs_to :martial_arts
end