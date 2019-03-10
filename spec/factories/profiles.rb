# frozen_string_literal: true

FactoryBot.define do
  factory :profile do
    background { "MyText" }
    active_player { false }
    start_date { "2019-02-28" }
    image { "MyString" }
    pb_bench_press_kg { 1.5 }
    pb_100mtr_sprint_seconds { "2019-02-28 13:34:09" }
    pb_squat_weight_kg { 1.5 }
    height { 1.5 }
    weight { 1.5 }
    current_position { "MyString" }
    user_id { nil }
  end
end