FactoryBot.define do
  factory :order do
    quantity { 1 }
    total_amount { 2.00 }
    product
    user
  end
end
