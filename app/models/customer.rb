class Customer < ActiveRecord::Base
  belongs_to :province
  has_one :order
  belongs_to :order
end
