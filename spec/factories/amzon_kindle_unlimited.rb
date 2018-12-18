# frozen_string_literal: true

FactoryBot.define do
  factory :amazon_kindle_unlimited do
    price { 980 }
    user_id { 1 }

    trait :invalid do
      price nil
    end
  end

  factory :kindle_2, class: AmazonKindleUnlimited do
    price { 980 }
    user_id { 1 }
  end

  factory :kindle_3, class: AmazonKindleUnlimited do
    price { 1980 }
    user_id { 1 }
  end

  factory :kindle_4, class: AmazonKindleUnlimited do
    price { 980 }
    user_id { 1 }
  end
end
