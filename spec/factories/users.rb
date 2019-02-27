# frozen_string_literal: true

FactoryBot.define do
  # Callbacks used to work around the Devise confirmable option
  after(:build)   { |u| u.skip_confirmation_notification! }
  after(:create)  { |u| u.confirm }

  factory :user do
    first_name { "John" }
    last_name { "Wayne" }
    email { 'john@wayne.com'}
    password { 'password1234'}
  end
end
