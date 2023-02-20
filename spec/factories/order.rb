FactoryBot.define do
  factory :order do
    quantity { 1 }
    product
    user
  end
end
