class Product < ApplicationRecord
  belongs_to :category
  has_many_attached :images
  belongs_to :country
end
