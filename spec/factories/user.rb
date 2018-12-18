# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'test@email.com' }
    password { '123456' }
    password_confirmation { '123456' }

    factory :user_2 do
      email { 'aaa@aaa' }
      password { '123456' }
    end

    factory :user_3 do
      email { 'aaa@aaa' }
      password { '123456' }
    end

    factory :user_4 do
      email { 'aaa@aaa' }
      password { '123456' }
    end
  end
end
