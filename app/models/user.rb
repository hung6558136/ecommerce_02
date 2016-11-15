class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
      :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :orders
  has_many :suggest_products
  has_many :recently_products
end
