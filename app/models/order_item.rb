class OrderItem < ApplicationRecord
  belongs_to :order

  #TODO
  validates :product_name, :integer, :order_id, presence: true
end
