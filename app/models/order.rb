class Order < ActiveRecord::Base
  belongs_to :client
  has_many :orderProducts, :dependent => :destroy
  has_many :products, :through => :orderProducts
  
  validates :number, :pay_method, :delivery_method, :product_list, :cost_of_products, :total_cost, :date_of_order,  presence: true
  validates :pay_method, inclusion: { in: ['Безналичный расчёт', 'Наличными курьеру']}
  validates :delivery_method, inclusion: { in: ['Курьером', 'Самовывоз', 'Почтой']}
end
