class Image < ApplicationRecord
  # def product
  #   Product.find_by(id: id)
  # end
  belongs_to :product
end
