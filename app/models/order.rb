class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  belongs_to :product # take out or leave in?
end
