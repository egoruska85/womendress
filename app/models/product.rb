class Product < ApplicationRecord
  belongs_to :category
  has_many_attached :images
  belongs_to :country
  has_many :productcomments
  has_many :articles
  has_many_attached :videos

  is_impressionable
end
