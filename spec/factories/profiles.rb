FactoryBot.define do
  factory :profile do
    background { "MyText" }
    active_player { false }
    start_date { "2019-02-28" }
    image { "MyString" }
    pb_bench_press { 1.5 }
    pb_100mtr_sprint { "2019-02-28 13:34:09" }
    pb_squat_weight { 1.5 }
    height { 1.5 }
    weight { 1.5 }
    current_postion { "MyString" }
    user { nil }
  end
end
