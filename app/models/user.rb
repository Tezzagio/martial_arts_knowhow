class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


	has_many :martial_arts
	has_many :comments, :through => :martial_arts

	has_many :comments
	has_many :user_comments, :through => :comments


    belongs_to :user
end