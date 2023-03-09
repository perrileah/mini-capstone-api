class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :name, length: { maximum: 12 }
  # validates :price, presence: true
  # validates :price, numerically: { greater_than: 0 }
  # validates :description, length: { minimum: 10, maximum: 500 }
  # validates :quantity, numerically: { greater_than: 0 }

  # def is_discounted?
  #   if price <= 10
  #     return true
  #   else
  #     return false
  #   end
  # end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def tax
    tax = price.to_i * 0.09
    return tax
  end

  def total
    total = price.to_i + tax
    return total
  end

  # def images
  #   Image.where(product_id: id)
  # end

  belongs_to :supplier

  has_many :images
end
