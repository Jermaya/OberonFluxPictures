class Order < ActiveRecord::Base
  has_one :customer
  has_many :orderpictures
end
