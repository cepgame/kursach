class Product < ActiveRecord::Base
  has_many :orderProducts, :dependent => :destroy
  has_many :orders, :through => :orderProducts

  validates :name, :base_price, :current_price, :amt_in_stock, :ven_code, :min_amt_in_order, presence: true

end
