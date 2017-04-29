class OrderProduct < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates :order, uniqueness: { scope: :product }
end
