class Category < ApplicationRecord
  acts_as_nested_set
  has_many :products
  validates :name, presence: true, uniqueness: true, allow_blank: false
end
