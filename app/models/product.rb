class Product < ApplicationRecord
  belongs_to :category
  has_many :comments
  has_many :recently_products
  has_many :specifications
  has_many :order_details
  has_many :manufacturers
end
