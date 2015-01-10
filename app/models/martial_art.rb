class MartialArt < ActiveRecord::Base
  belongs_to :user
  belongs_to :regional_origin
end
