class Category < ApplicationRecord
  acts_as_nested_set
  acts_as_paranoid column: :deleted_at
  has_many :products
  validates :name, presence: true, uniqueness: true, allow_blank: false

  class << self
    def find_by_name name
      self.includes(:products).where("categories.name LIKE '%#{name}%'")
    end
  end
end
