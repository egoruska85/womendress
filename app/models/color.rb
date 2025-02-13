class Color < ApplicationRecord
  has_many :colors_products
  has_many :products, through: :colors_products
end
