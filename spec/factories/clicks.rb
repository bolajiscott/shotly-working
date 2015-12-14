FactoryGirl.define do
  factory :click do
    ip { Faker::Internet.ip_v4_address }
    country { Faker::Address.country }
    referrer { Faker::Internet.user_name }
  end
end
