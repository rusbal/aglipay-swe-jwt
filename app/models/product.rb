class Product < ApplicationRecord
  belongs_to :category
  has_many :orders

  validates :name, presence: true
  validates :price, numericality: { greater_than: 0, less_than_or_equal_to: 99999 }
end
