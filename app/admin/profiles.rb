# frozen_string_literal: true

ActiveAdmin.register Profile, as: "Player Profiles" do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :background, :active_player, :start_date,
                :pb_bench_press_kg, :pb_100mtr_sprint_seconds,
                :pb_squat_weight_kg, :height, :weight,
                :current_position, :user_id

  scope :active_players
  scope :not_yet_active_players

  index do
    selectable_column
    column :player_name do |profile|
      "#{User.find_by(id: profile.user_id)}"
    end
    column :active_player do |profile|
      "#{profile[:active_player]}".capitalize
    end
    column :current_position do |profile|
      "#{profile[:current_position]}".capitalize
    end
    actions
  end

  show do
    attributes_table do
      row :background do |profile|
        "#{User.find_by(id: profile.user_id)}"
      end
      row :active_player do |profile|
        "#{profile[:active_player]}".capitalize
      end
      row :start_date
      row :pb_bench_press_kg
      row :pb_100mtr_sprint_seconds
      row :pb_squat_weight_kg
      row :height
      row :weight
      row :current_position do |profile|
        "#{profile[:current_position]}".capitalize
      end
    end
  end
end