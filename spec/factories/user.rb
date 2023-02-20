FactoryBot.define do
  factory :user do
    email { 'user@email.com' }
    password { '$2a$12$J3yIJb1qswcbCd0SL0dr3.Ufc0TOjWv/3Z9LaxTUM/yumNIrOhBRq' } # Encrypted 'password'
  end
end
