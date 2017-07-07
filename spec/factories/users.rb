FactoryGirl.define do
  factory :user do
    name 'henrique'
    city 'sào paulo'
    email 'henrique@hotmail.com'
    password '123456'

    trait :admin do
      role 'admin'
    end

    trait :normal_user do
      role 'user'
    end
  end
end
