class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy

  ALLOWED_STATUSES = [
      STATUS_NEW = "new",
      STATUS_PROCESSING = "processing",
      STATUS_SHIPPED = "shipped",
      STATUS_NEEDS_RESTOCKING = "needs_restocking",
      STATUS_CANCELLED = "cancelled"
  ].freeze

  validates :status, :recipient, presence: true
  validates_associated :order_items
end
