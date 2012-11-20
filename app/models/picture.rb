class Picture < ActiveRecord::Base
  has_many :orderpictures
  has_many :images
  belongs_to :artist
  belongs_to :category
end
