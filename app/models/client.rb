class Client < ActiveRecord::Base
  has_many :orders

  validates :name, :phone_number, :address, :email, presence: true
end
