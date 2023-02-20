class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :quantity, numericality: { greater_than: 0 }

  validate :total_amount do
    if product.present? && total_amount != product.price * quantity
      errors.add(:total_amount, "should be equal to product.price times quantity")
    end
  end
end
