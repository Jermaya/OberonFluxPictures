class OrderPicture < ActiveRecord::Base
  belongs_to :order
  belongs_to :picture
end
